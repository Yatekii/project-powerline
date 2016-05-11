import sys
from PyQt5.QtWidgets import QWidget, QApplication, QPushButton, QLabel

class HomeView(QWidget):

    home_view = QWidget()

    def __init__(self):
        super().__init__()

        history_bt = QPushButton("History")
        setting_bt = QPushButton("Einstellungen")
        current_title = QLabel("Strommessung")
        current1_label = QLabel("String 1")
        current2_label = QLabel("String 2")
        current3_label = QLabel("String 3")
        current1_lb = QLabel()
        current2_lb = QLabel()
        current3l_b = QLabel()


if __name__ == '__main__':

    app = QApplication(sys.argv)
    win = HomeView()
    sys.exit(app.exec_())