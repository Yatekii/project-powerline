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


log = logging.getLogger("MasterLog")
log.setLevel(logging.DEBUG)
logQue = queue.Queue(-1)
logQueueHandler = logging.handlers.QueueHandler(logQue)
logFormat = logging.Formatter('%(asctime)s | %(name)s | %(threadName)s: %(levelname)s: %(message)s')
logTermHandler = logging.StreamHandler()
logTermHandler.setFormatter(logFormat)
logSyslogHandler = logging.handlers.SysLogHandler('/dev/log')
logSyslogHandler.setFormatter(logFormat)
logListener = logging.handlers.QueueListener(logQue, logTermHandler, logSyslogHandler)
log.addHandler(logQueueHandler)

dbSession_factory = sessionmaker(bind='sqlite:///powerline.db')
dbScoped = scoped_session(dbSession_factory)

logListener.start()
log.debug('test')
log.info('test')
log.warning('test')
log.error('test')

cmdQueueTest = queue.Queue()
tt = threadtest.powerline_prototype(dbScoped, cmdQueueTest)
tt.start()
cmdQueueTest.put('lol')
time.sleep(5)
cmdQueueTest.put('lol')

time.sleep(5)
tt.join()

logListener.stop()
