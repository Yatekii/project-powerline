"""
hallo das ist ein Kommentar
"""
from PyQt5.QtWidgets import QWidget, QPushButton, QLabel
from PyQt5.QtGui import QFont


class HomeView(QWidget):
    def __init__(self, parent):
        super(HomeView, self).__init__(parent)

        current1 = 100          #input argument
        current2 = 200
        current3 = 300
        state = "kein Fehler"

        font_state = QFont()
        font_state.setPointSize(12)
        font_state.setBold(1)

        font_title = QFont()
        font_title.setBold(1)

        self.test_error_bt = QPushButton('Error', self)         #comment for final use
        self.test_error_bt.clicked.connect(self.parent().show_error_view)
        self.test_error_bt.move(200, 40)

        self.history_bt = QPushButton("Verlauf", self)
        self.history_bt.clicked.connect(self.parent().show_history_view)
        self.history_bt.resize(140, 50)
        self.history_bt.move(0, 160)

        self.setting_bt = QPushButton("Einstellungen", self)
        self.setting_bt.clicked.connect(self.parent().show_configuration_view)
        self.setting_bt.resize(140, 50)
        self.setting_bt.move(150, 160)

        self.status_lb = QLabel("Anlagestatus: " + state, self)
        self.status_lb.setFont(font_state)
        self.status_lb.move(0,0)

        self.current_title = QLabel("Strommessung:", self)
        self.current_title.setFont(font_title)
        self.current_title.move(0, 40)

        self.current1_lb = QLabel("String 1:   " + str(current1) + " A", self)
        self.current1_lb.move(0, 60)
        self.current2_lb = QLabel("String 2:   " + str(current2) + " A", self)
        self.current2_lb.move(0, 80)
        self.current3_lb = QLabel("String 3:   " + str(current3) + " A", self)
        self.current3_lb.move(0, 100)