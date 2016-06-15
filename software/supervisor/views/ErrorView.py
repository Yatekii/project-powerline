from PyQt5.QtWidgets import QWidget, QPushButton, QLabel
from PyQt5.QtGui import QFont
import time


class ErrorView(QWidget):
    def __init__(self, parent):
        super(ErrorView, self).__init__(parent)

        font = QFont("Arial", 10)
        font_title = QFont()
        font.setBold(1)

        self.error_lb = QLabel("Modulfehler", self)
        self.error_lb.setFont(QFont("bold", 20))
        self.error_lb.move(70, 0)

        self.modul_nr_title_lb = QLabel('Modulnummer: \n' + str(hex(0)) + '\n' + time.strftime('%d-%m-%Y %H:%M'), self)
        self.modul_nr_title_lb.move(0, 50)
        self.modul_nr_title_lb.setFont(font)

        self.modul_nr_lb = QLabel(self)
        self.modul_nr_lb.move(120, 150)

        self.hist_bt = QPushButton("Verlauf", self)
        self.hist_bt.resize(140, 50)
        self.hist_bt.move(0, 160)
        self.hist_bt.clicked.connect(self.parent().show_history_view)

        self.ok_bt = QPushButton("OK", self)
        self.ok_bt.clicked.connect(self.parent().show_home_view)
        self.ok_bt.resize(140, 50)
        self.ok_bt.move(150, 160)

    def set_serial_number(self, serial_number):
        self.modul_nr_title_lb.setText('Modulnummer: \n' + str(hex(serial_number)) + '\n' + time.strftime('%d-%m-%Y %H:%M'))
