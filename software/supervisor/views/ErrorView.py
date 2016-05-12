
from PyQt5.QtWidgets import QWidget, QPushButton, QLabel
from PyQt5.QtGui import QFont


class ErrorView(QWidget):
    def __init__(self):
        super().__init__()

        font = QFont("Arial", 10)

        errorlb = QLabel("Modulfehler", self)
        errorlb.setFont(QFont("bold", 20))
        errorlb.move(80, 30)

        modulNrTitlelb = QLabel("Modulnummer:", self)
        modulNrTitlelb.move(120, 100)
        modulNrTitlelb.setFont(font)

        modulNrlb = QLabel(self)
        modulNrlb.move(120, 150)

        histBt = QPushButton("History", self)
        histBt.move(10, 205)

        okBt = QPushButton("OK", self)
        okBt.move(180, 205)
