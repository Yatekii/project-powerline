"""
comment
"""

from PyQt5.QtWidgets import QWidget, QPushButton, QLabel
from PyQt5.QtGui import QFont


class ErrorView(QWidget):
    def __init__(self, parent):
        super(ErrorView, self).__init__(parent)

        self.error_modul_nr = 2346534234        #input argument

        font = QFont("Arial", 10)
        font_title = QFont()
        font.setBold(1)

        self.error_lb = QLabel("Modulfehler", self)
        self.error_lb.setFont(QFont("bold", 20))
        self.error_lb.move(70, 0)

        self.modul_nr_title_lb = QLabel("Modulnummer: \n" + str(hex(self.error_modul_nr)+"\n09:41 12-05-2016"), self)
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