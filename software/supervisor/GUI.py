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
from PyQt5.QtWidgets import *
from PyQt5.QtGui import *
from PyQt5.QtCore import *

class Example(QWidget):

    def __init__(self):
        super().__init__()

        #self.initHome()
        self.initError(2456775444)
        #self.initConfig()
        #self.initHandynr()
        #self.initHistory()

    def initHome(self):

        current1 = 100
        current2 = 200
        current3 = 300

        hystoryBt = QPushButton("Hystory", self)
        settingBt = QPushButton("Einstellungen", self)
        currentTitle = QLabel("Strommessung", self)
        current1Label = QLabel("String 1", self)
        current2Label = QLabel("String 2", self)
        current3Label = QLabel("String 3", self)
        current1lb = QLabel(str(current1) + " A", self)
        current2lb = QLabel(str(current2) + " A", self)
        current3lb = QLabel(str(current3) + " A", self)

        hystoryBt.resize(145, 50)
        hystoryBt.move(10, 10)

        settingBt.resize(145, 50)
        settingBt.move(165, 10)

        currentTitle.move(110, 100)
        currentTitle.resize(100,50)
        current1Label.move(10, 150)
        current1lb.move(100, 150)
        current2Label.move(10, 175)
        current2lb.move(100, 175)
        current3Label.move(10, 200)
        current3lb.move(100, 200)

        self.setGeometry(100,100,320,240)
        self.setWindowTitle('Home')
        self.show()

    def initError(self, ErrorModul):

        font = QFont("Arial", 10)

        errorlb = QLabel("Modulfehler", self)
        errorlb.setFont(QFont("bold", 20))
        errorlb.move(80,30)

        modulNrTitlelb = QLabel("Modulnummer:", self)
        modulNrTitlelb.move(120,100)
        modulNrTitlelb.setFont(font)

        modulNrlb = QLabel(str(ErrorModul), self)
        modulNrlb.move(120,150)

        histBt = QPushButton("History", self)
        histBt.move(10,205)

        okBt = QPushButton("OK", self)
        okBt.move(180,205)

        self.setGeometry(100,100,320,240)
        self.setWindowTitle('Fehler')
        self.show()

        print("Fehler")


    def initConfig(self):
        homeBt = QPushButton("Home", self)
        homeBt.move(10,10)

        cancleBt = QPushButton("Abbrechen", self)
        cancleBt.move(10,200)

        saveBt = QPushButton("Speichern", self)
        saveBt.move(200,200)

        nrBt = QPushButton("Handynr. hinzufügen", self)
        nrBt.move(100,80)

        confTitle = QLabel("Benachrichtigungsart:", self)
        confTitle.move(10,50)

        smsCb = QCheckBox('SMS', self)
        smsCb.move(10, 80)
        #smsCb.toggle()

        relaisCb1 = QCheckBox("Relais 1", self)
        relaisCb1.move(10, 100)

        relaisCb2 = QCheckBox("Relais 2", self)
        relaisCb2.move(10, 120)

        self.setGeometry(100,100,320,240)
        self.setWindowTitle('Konfiguration')
        self.show()


    def initHandynr(self):

        grid = QGridLayout()
        grid.setSpacing(5)
        self.setLayout(grid)

        homeBt = QPushButton("Home")
        handylb = QLabel("Handynummer eingeben:")
        nrEdit = QLineEdit()

        grid.addWidget(homeBt,  0, 0)
        grid.addWidget(handylb, 0, 1)
        grid.addWidget(nrEdit, 1, 0, 1, 4)

        names = ['7', '8', '9','*',
                '4', '5', '6', '0',
                 '1', '2', '3', '#']

        positions = [(i+2,j) for i in range(3) for j in range(4)]

        for position, name in zip(positions, names):

            button = QPushButton(name)

            grid.addWidget(button, *position)

        self.setGeometry(100,100,320,240)
        self.setWindowTitle('Handynummer')
        self.show()

    def initHistory(self):

        modulNr = 2346534234

        homeBt = QPushButton("Home", self)
        homeBt.move(10,10)
        hysteryLb = QLabel("History", self)
        hysteryLb.move(120,10)

        modulLb = QLabel("Modul", self)
        modulLb.move(10,120)
        modnrLb = QLabel(str(hex(modulNr)), self)
        modnrLb.move(80,120)
        timeLb = QLabel("21:34 02-12-2016", self)
        timeLb.move(200,120)

        self.setGeometry(100,100,320,240)
        self.setWindowTitle('Handynummer')
        self.show()

if __name__ == '__main__':

    app = QApplication(sys.argv)
    ex = Example()
    sys.exit(app.exec_())
