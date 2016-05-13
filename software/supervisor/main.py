#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import threading
import logging
import logging.handlers
import queue
import threadtest
import time
from sqlalchemy.orm import scoped_session
from sqlalchemy.orm import sessionmaker

# setup logging
log = logging.getLogger("MasterLog")
log.setLevel(logging.DEBUG)
logQue = queue.Queue(-1)
logQueueHandler = logging.handlers.QueueHandler(logQue)
logFormat = logging.Formatter(
    '%(asctime)s | %(name)s | %(threadName)s: %(levelname)s: %(message)s'
)
logTermHandler = logging.StreamHandler()
logTermHandler.setFormatter(logFormat)
logSyslogHandler = logging.handlers.SysLogHandler('/dev/log')
logSyslogHandler.setFormatter(logFormat)
logListener = logging.handlers.QueueListener(
    logQue,
    logTermHandler,
    logSyslogHandler
)
log.addHandler(logQueueHandler)
logListener.start()

# setup database
dbSession_factory = sessionmaker(bind='sqlite:///powerline.db')
dbScoped = scoped_session(dbSession_factory)

# example thread
semCtrlTest = threading.Semaphore()
semCtrlTest2 = threading.Semaphore()

tt = threadtest.powerline_prototype(dbScoped, semCtrlTest, semCtrlTest2)
tt.setDaemon(True)
tt.start()


# test commands
semCtrlTest.release()
time.sleep(5)
semCtrlTest.release()
time.sleep(5)

# clean up
logListener.stop()
