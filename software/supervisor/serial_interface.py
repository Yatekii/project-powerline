import serial
import struct
import time

sensor_id = 0xdeadbeef

class SerialInterface():

    def __init__(self, wait_timeout):
        self.wait_timeout = wait_timeout
        self.ser = serial.Serial('/dev/tty.usbserial-A9X2VVZC', 9600, timeout=5)

    def read(self):
        return self.ser.read()

    def wait_for_voltage(self, sensor_id):
        data = b''
        message = b''
        message += struct.pack('B', 0)
        message += struct.pack('<L', sensor_id)
        t1 = time.time()
        while time.time() - t1 < self.wait_timeout:
            char = self.ser.read()
            print(char)
            if char == b'\r':
                if len(data) == 7 and data[:5] == message:
                    voltage = struct.unpack('H', data[5:7])
                    return voltage[0]
            else:
                data += char
        return None

    # Get actual voltage
    def send_read(self, sensor_id):
        message = b''
        message += struct.pack('B', 1)
        message += struct.pack('<L', sensor_id)
        message += b'rad'
        message += b'\r'
        self.ser.write(message)
        print('Get real data')

    # Get fake data as if module was broken
    def request_bad_fake_data(self, sensor_id):
        message = b''
        message += struct.pack('B', 1)
        message += struct.pack('<L', sensor_id)
        message += b'sfd'
        message += b'\r'
        self.ser.write(message)
        print('Get bad data')
        print(message)

    # Get fake data as if module works
    def request_good_fake_data(self, sensor_id):
        message = b''
        message += struct.pack('B', 1)
        message += struct.pack('<L', sensor_id)
        message += b'sgd'
        message += b'\r'
        self.ser.write(message)
        print('Get good data')

interface = SerialInterface(100)

interface.request_good_fake_data(sensor_id)
voltage = interface.wait_for_voltage(sensor_id)
if voltage != None:
    print(voltage)
time.sleep(1)
interface.request_bad_fake_data(sensor_id)
voltage = interface.wait_for_voltage(sensor_id)
if voltage != None:
    print(voltage)
