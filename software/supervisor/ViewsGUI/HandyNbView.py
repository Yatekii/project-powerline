import sys
from PyQt5.QtWidgets import QWidget, QApplication, QPushButton, QLabel

class HomeView():

    home_view = QWidget()

    def __init__(self):
        super().__init__()

        grid = QGridLayout()
        grid.setSpacing(5)
        self.setLayout(grid)

        homeBt = QPushButton("Home")
        handylb = QLabel("Handynummer eingeben:")
        nrEdit = QLineEdit()

        grid.addWidget(homeBt, 0, 0)
        grid.addWidget(handylb, 0, 1)
        grid.addWidget(nrEdit, 1, 0, 1, 4)

        names = ['7', '8', '9', '*',
                 '4', '5', '6', '0',
                 '1', '2', '3', '#']

        positions = [(i + 2, j) for i in range(3) for j in range(4)]

        for position, name in zip(positions, names):
            button = QPushButton(name)

            grid.addWidget(button, *position)


