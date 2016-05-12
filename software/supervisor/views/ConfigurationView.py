
"""
This is a QWidget with every element ond the configuration window
"""


from PyQt5.QtWidgets import QPushButton, QLabel, QCheckBox, QWidget


class ConfigurationView(QWidget):

    def __init__(self):
        super().__init__()

        homeBt = QPushButton("Home", self)
        homeBt.move(10, 10)
        cancleBt = QPushButton("Abbrechen", self)
        cancleBt.move(10, 200)
        saveBt = QPushButton("Speichern", self)
        saveBt.move(200, 200)
        nrBt = QPushButton("Handynr. hinzufügen", self)
        nrBt.move(100, 80)
        confTitle = QLabel("Benachrichtigungsart:", self)
        confTitle.move(10, 50)
        smsCb = QCheckBox('SMS', self)
        smsCb.move(10, 80)
        # smsCb.toggle()
        relaisCb1 = QCheckBox("Relais 1", self)
        relaisCb1.move(10, 100)
        relaisCb2 = QCheckBox("Relais 2", self)
        relaisCb2.move(10, 120)
