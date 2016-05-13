"""
comment
"""

from PyQt5.QtWidgets import QPushButton, QLabel, QWidget
from PyQt5.QtGui import QFont


class HistoryView(QWidget):
    def __init__(self, parent):
        super(HistoryView, self).__init__(parent)

        self.modul_nr1 = 2346534234         #input argument
        self.modul_nr2 = 2495983932
        self.modul_nr3 = 2345028093

        font_title = QFont()
        font_title.setBold(1)

        self.ok_bt = QPushButton("OK", self)
        self.ok_bt.clicked.connect(self.parent().show_home_view)
        self.ok_bt.move(150, 160)
        self.ok_bt.resize(140, 50)

        self.history_lb = QLabel("Errorhistory:", self)
        self.history_lb.setFont(font_title)
        self.history_lb.move(0, 0)

        self.modul_lb1 = QLabel("Modul:   " + str(hex(self.modul_nr1)) + "   09:41 12-05-2016", self)
        self.modul_lb1.move(0, 40)

        self.modul_lb2 = QLabel("Modul:   " + str(hex(self.modul_nr2)) + "   15:25 11-05-2016", self)
        self.modul_lb2.move(0, 60)

        self.modul_lb3 = QLabel("Modul:   " + str(hex(self.modul_nr3)) + "   15:25 10-05-2016", self)
        self.modul_lb3.move(0, 80)