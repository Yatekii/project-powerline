import time

class ModulePackage(object):

    def __init__(self, name, voltage):
        self.name = name
        self.voltage = voltage
        self.timestamp = time.time()

testmodul1 = ModulePackage("testname", 15)

print(testmodul1.name)
print(testmodul1.voltage)
print(testmodul1.timestamp)
