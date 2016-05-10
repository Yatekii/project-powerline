#!/usr/bin/python3
# -*- coding: utf-8 -*-

"""
ZetCode PyQt5 tutorial

In this example, we create a simple
window in PyQt5.

author: Jan Bodnar
website: zetcode.com
last edited: January 2015
"""

import sys
from PyQt5.QtWidgets import QApplication, QWidget, QLabel, QPushButton, QHBoxLayout, QVBoxLayout, QGridLayout


class Example(QWidget):

    def __init__(self):
        super().__init__()

        self.initUI()


    def initUI(self):

        hystoryBt = QPushButton("Hystory")
        settingBt = QPushButton("Einstellungen")
        strom = 

        hbox = QHBoxLayout()
        hbox.addWidget(hystoryBt)
        hbox.addWidget(settingBt)

        vbox = QVBoxLayout()
        vbox.addLayout(hbox)
        vbox.addStretch(1)



        self.setLayout(vbox)

        self.setGeometry(100,100,320,240)
        self.setWindowTitle('Home')
        self.show()



if __name__ == '__main__':

    app = QApplication(sys.argv)
    ex = Example()
    sys.exit(app.exec_())
