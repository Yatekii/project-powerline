#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import threading
import queue
import logging


class powerline_prototype(threading.Thread):
    def __init__(self, dbScoped, cmdQueue):
        super(powerline_prototype, self).__init__()
        self.stoprequest = threading.Event()
        self.log = logging.getLogger("MasterLog")
        self.log.debug('powerline_prototype loaded')
        self.dbScoped = dbScoped
        self.dbSession = self.dbScoped()
        self.cmdQueue = cmdQueue

    def run(self):
        while not self.stoprequest.isSet():
            try:
                self.cmdQueue.get(True, 1)
                self.log.debug('powerline_prototype run')
                # TODO: CODE HERE
            except queue.Empty:
                continue

    def join(self, timeout=None):
        self.stoprequest.set()
        super(powerline_prototype, self).join(timeout)
        self.dbScoped.remove()
