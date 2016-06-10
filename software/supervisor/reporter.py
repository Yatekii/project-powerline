# todo imports

# todo wird vermutlich per Interrupt angekickt


# todo Interrupt in configurator auslösen und Meldung auf Display darstellen

# todo Relaiskontakt auslösen (umsetzung je nach additional board)

# todo SMS-Nachricht auslösen


# todo Interrupt

import threading
import socket
import json

class Reporter(threading.Thread):
    def __init__(self):
        threading.Thread.__init__(self)
        TCP_IP = '127.0.0.1'
        TCP_PORT = 1337
        self.socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.socket.bind((TCP_IP, TCP_PORT))
        self.socket.listen(1)

        self.report_callback = None
        pass

    def set_report_callback(self, callback):
        self.report_callback = callback

    def emmit_error(self):
        self.report_callback()

    def run(self):
        self.running = True
        while self.running:
            self.conn, addr = self.socket.accept()
            data = self.conn.recv(1024)
            try:
                print('DATA:', data)
                data = json.loads(data.decode())
                if 'error' in data:
                    self.emmit_error()
            except Exception:
                continue
    def stop():
        self.running = False
        s.close()
