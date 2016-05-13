"""
This is a QStackedWidget with every element on the configuration window
"""

from PyQt5.QtWidgets import QPushButton, QLabel, QCheckBox, QWidget
from PyQt5.QtGui import QFont


class ConfigurationView(QWidget):
    def __init__(self, parent):
        super(ConfigurationView, self).__init__(parent)

        self.saved_configuration = [False, False, False]

        font_title = QFont()
        font_title.setBold(1)

        self.cancel_bt = QPushButton("Abbrechen", self)
        self.cancel_bt.move(0, 160)
        self.cancel_bt.resize(140, 50)
        self.cancel_bt.clicked.connect(self.cancel_qcheckbox)

        self.save_bt = QPushButton("Speichern", self)
        self.save_bt.move(150, 160)
        self.save_bt.resize(140, 50)
        self.save_bt.clicked.connect(self.save_configuration)

        font = QFont()
        font.setPointSize(8)
        self.nr_bt = QPushButton("Handynr. hinzufügen", self)
        self.nr_bt.setFont(font)
        self.nr_bt.clicked.connect(self.parent().show_handy_nb_view)
        self.nr_bt.move(150, 40)
        self.nr_bt.resize(140, 50)

        self.conf_title = QLabel("Benachrichtigungsart:", self)
        self.conf_title.setFont(font_title)
        self.conf_title.move(0, 0)

        self.sms_cb = QCheckBox('SMS', self)
        self.sms_cb.move(0, 40)

        self.relais_cb_1 = QCheckBox("Relais 1", self)
        self.relais_cb_1.move(0, 60)
        self.relais_cb_2 = QCheckBox("Relais 2", self)
        self.relais_cb_2.move(0, 80)

    def cancel_qcheckbox(self):
        self.sms_cb.setChecked(self.saved_configuration[0])
        self.relais_cb_1.setChecked(self.saved_configuration[1])
        self.relais_cb_2.setChecked(self.saved_configuration[2])
        #self.parent().show_home_view

    def save_configuration(self):
        self.saved_configuration[0] = self.sms_cb.isChecked()
        self.saved_configuration[1] = self.relais_cb_1.isChecked()
        self.saved_configuration[2] = self.relais_cb_2.isChecked()
        #self.parent().show_home_view