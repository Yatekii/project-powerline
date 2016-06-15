from pickletools import _Example

from transitions import Machine
import sys
from enum import Enum
import time
import GUI


class State:
    home = 1
    error = 2
    configuration = 4
    histroy = 8
    sms = 16


class StatemachineGUI(Machine):
    def __init__(self):
        self.window = GUI.Windows()

    def default(self):
        print('default')

    def home(self):
        self.window.initHome()

    def error(self):
        self.window.initError(self, 2345533)

    def configuration(self):
        self.window.initConfig()

    def history(self):
        self.window.initHistory()

    def sms(self):
        self.window.initHandynr()

    states = [default, home, error, configuration, history, sms]

    def States(self):
        self.state = State.home
        while True:
            if int(self.state) < len(self.states):
                self.states[self.state](self)

            else:
               self.states[State.home]


app = GUI.QApplication(sys.argv)
st = StatemachineGUI()
st.States()
sys.exit(app.exec_())



