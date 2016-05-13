#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import threading
import atexit
import logging


class powerline_prototype(threading.Thread):
    def __init__(self, dbScoped, semCtrl, semNext):
        super(powerline_prototype, self).__init__(name='prototype')
        self.log = logging.getLogger("MasterLog")
        self.dbScoped = dbScoped
        self.dbSession = self.dbScoped()
        self.semCtrl = semCtrl
        atexit.register(self.cleanup)

    def run(self):
        while True:
            self.semCtrl.acquire(True)
            session = self.dbSession
            # TODO: CODE HERE
            self.semNext.release()

    def cleanup(self):
        self.dbScoped.remove()
