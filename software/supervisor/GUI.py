#!/usr/bin/python3
# -*- coding: utf-8 -*-

import sys
from PyQt5.QtWidgets import *
from PyQt5.QtGui import *
from PyQt5.QtCore import *
from views import HomeView, ConfigurationView, ErrorView, HandyNbView, HistoryView


class MainWindow(QWidget):
    def __init__(self):
        super().__init__()

        self.home_view = HomeView.HomeView()
        self.configuration_view = ConfigurationView.ConfigurationView()
        self.error_view = ErrorView.ErrorView()
        self.handy_nb_view = HandyNbView.HandyNbView()
        self.history_view = HistoryView.HistoryView()
        self.main_view = QStackedWidget()

        self.main_view.addWidget(self.home_view)
        self.main_view.addWidget(self.configuration_view)
        self.main_view.addWidget(self.error_view)
        self.main_view.addWidget(self.handy_nb_view)
        self.main_view.addWidget(self.history_view)

        self.view_select = QComboBox()
        self.view_select.addItem('Home')
        self.view_select.addItem('Error')
        self.view_select.activated.connect(self.main_view.setCurrentIndex)
        self.main_view.setCurrentIndex(0)

        self.layout = QVBoxLayout()
        self.layout.addWidget(self.main_view)
        self.layout.addWidget(self.view_select)
        self.setLayout(self.layout)
        self.setGeometry(100, 100, 320, 240)

        self.show()


if __name__ == '__main__':
    app = QApplication(sys.argv)
    win = MainWindow()
    sys.exit(app.exec_())
