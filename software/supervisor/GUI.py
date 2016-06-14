#!/usr/bin/python3
# -*- coding: utf-8 -*-

import sys
from PyQt5.QtWidgets import *
from PyQt5.QtGui import QFont
from PyQt5.QtCore import *
from views import HomeView, ConfigurationView, ErrorView, HandyNbView, HistoryView


from reporter import Reporter


class MainWindow(QWidget):
    def __init__(self):
        super().__init__()

        self.reporter = Reporter()
        self.reporter.set_report_callback(self.show_error_view)
        self.reporter.start()

        self.home_view = HomeView.HomeView(self)
        self.configuration_view = ConfigurationView.ConfigurationView(self)
        self.error_view = ErrorView.ErrorView(self)
        self.handy_nb_view = HandyNbView.HandyNbView(self)
        self.history_view = HistoryView.HistoryView(self)
        self.main_view = QStackedWidget()                   #QStackedWidget with all QWidgets (Windows) of the GUI

        self.main_view.addWidget(self.configuration_view)
        self.main_view.addWidget(self.error_view)
        self.main_view.addWidget(self.handy_nb_view)
        self.main_view.addWidget(self.history_view)
        self.main_view.addWidget(self.home_view)
        self.main_view.setCurrentIndex(4)

        #self.view_select.activated.connect(self.main_view.setCurrentIndex)
        #self.main_view.setCurrentIndex(0)

        self.layout = QVBoxLayout()

        self.layout.addWidget(self.main_view)
        self.setLayout(self.layout)


        self.show()

    def show_configuration_view(self):
        self.main_view.setCurrentIndex(0)

    def show_error_view(self):
        self.main_view.setCurrentIndex(1)

    def show_handy_nb_view(self):
        self.main_view.setCurrentIndex(2)

    def show_history_view(self):
        self.main_view.setCurrentIndex(3)

    def show_home_view(self):
        self.main_view.setCurrentIndex(4)


if __name__ == '__main__':
    app = QApplication(sys.argv)
    font = QFont()
    font.setPointSize(9)
    app.setFont(font)
    win = MainWindow()
    #win.setWindowFlags(win.windowFlags() | Qt.FramelessWindowHint)
    win.setFixedSize(320,240)       # comment for final application!!!!!
    #win.showFullScreen()           # uncomment for final application!!!!!!!
    sys.exit(app.exec_())
