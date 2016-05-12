
from PyQt5.QtWidgets import QWidget, QPushButton, QLabel


class HomeView(QWidget):
    def __init__(self):
        super().__init__()

        current1 = 100
        current2 = 200
        current3 = 300

        hystoryBt = QPushButton("Hystory", self)
        settingBt = QPushButton("Einstellungen", self)
        currentTitle = QLabel("Strommessung", self)
        current1Label = QLabel("String 1", self)
        current2Label = QLabel("String 2", self)
        current3Label = QLabel("String 3", self)
        current1lb = QLabel(str(current1) + " A", self)
        current2lb = QLabel(str(current2) + " A", self)
        current3lb = QLabel(str(current3) + " A", self)

        hystoryBt.resize(145, 50)
        hystoryBt.move(10, 10)

        settingBt.resize(145, 50)
        settingBt.move(165, 10)

        currentTitle.move(110, 100)
        currentTitle.resize(100, 50)
        current1Label.move(10, 150)
        current1lb.move(100, 150)
        current2Label.move(10, 175)
        current2lb.move(100, 175)
        current3Label.move(10, 200)
        current3lb.move(100, 200)


