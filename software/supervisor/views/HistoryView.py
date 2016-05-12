
from PyQt5.QtWidgets import QPushButton, QLabel, QWidget


class HistoryView(QWidget):

    def __init__(self):
        super().__init__()
        modulNr = 2346534234

        homeBt = QPushButton("Home", self)
        homeBt.move(10, 10)
        hysteryLb = QLabel("History", self)
        hysteryLb.move(120, 10)

        modulLb = QLabel("Modul", self)
        modulLb.move(10, 120)
        modnrLb = QLabel(str(hex(modulNr)), self)
        modnrLb.move(80, 120)
        timeLb = QLabel("21:34 02-12-2016", self)
        timeLb.move(200, 120)