import sys
from _csv import Error

from PyQt5.QtWidgets import QWidget, QApplication, QPushButton, QLabel

class ErrorView():

    home_view = QWidget()

    def __init__(self):
        super().__init__()

        errorlb = QLabel("Modulfehler", self)
        errorlb.move(80, 30)
        modulNrTitlelb = QLabel("Modulnummer:", self)
        modulNrTitlelb.move(120, 100)
        modulNrlb = QLabel(str(ErrorModul), self)
        modulNrlb.move(120, 150)
        histBt = QPushButton("History", self)
        histBt.move(10, 205)
        okBt = QPushButton("OK", self)
        okBt.move(180, 205)

if __name__ == '__main__':

    app = QApplication(sys.argv)
    win = ErrorView()
    sys.exit(app.exec_())