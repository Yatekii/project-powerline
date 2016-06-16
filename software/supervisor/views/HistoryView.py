"""
comment
"""

from PyQt5.QtWidgets import QPushButton, QLabel, QWidget
from PyQt5.QtGui import QFont


class HistoryView(QWidget):
    def __init__(self, parent):
        super(HistoryView, self).__init__(parent)

        font_title = QFont()
        font_title.setBold(1)

        self.ok_bt = QPushButton("OK", self)
        self.ok_bt.clicked.connect(self.parent().show_home_view)
        self.ok_bt.move(150, 160)
        self.ok_bt.resize(140, 50)

        self.history_lb = QLabel("Fehlerverlauf:", self)
        self.history_lb.setFont(font_title)
        self.history_lb.move(0, 0)

        self.modul_lb1 = QLabel('', self)
        self.modul_lb1.move(0, 40)

        self.modul_lb2 = QLabel('', self)
        self.modul_lb2.move(0, 60)

        self.modul_lb3 = QLabel('', self)
        self.modul_lb3.move(0, 80)

    def add_new_fault(self, serial_number, time):
        self.modul_lb3.setText(self.modul_lb2.text())
        self.modul_lb2.setText(self.modul_lb1.text())
        self.modul_lb1.setText("Modul:   " + str(hex(serial_number)) + ' ' + time)
