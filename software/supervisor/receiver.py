# imports
import time
from database import insertp, inserts


# While Schleife mit delay und Abfrage beim IC oder falls möglich auf Meldung von IC warten ob neue Daten gekommen sind


# Wenn Daten gekommen sind:
# I^2C entschlüsseln

# CRC entschlüsseln

# Erstellen des Objektes mit allen wichtigen Daten (mit Class)
# wie stringnumber definieren? übergabeparameter oder nicht?


class ModulePackage(object):

    def __init__(self, stringnumber, serialnumber, voltage):
        self.serialnumber = serialnumber
        self.voltage = voltage
        self.stringnumber = stringnumber
        self.timestamp = time.time()

# Zu debugzwecken
# ----------------------------------------------
testmodul1 = ModulePackage(3, 123456, 15)
print(testmodul1.stringnumber)
print(testmodul1.serialnumber)
print(testmodul1.voltage)
print(testmodul1.timestamp)
insertp.execute(serialnumber=testmodul1.serialnumber, voltage=testmodul1.voltage, stringnumber=testmodul1.stringnumber, timestamp=time.time())
insertp.execute(serialnumber=testmodul1.serialnumber, voltage=testmodul1.voltage, stringnumber=testmodul1.stringnumber, timestamp=time.time())
# -----------------------------------------------

insertp.execute(serialnumber=456474676, voltage=120, stringnumber=842, timestamp=time.time())
inserts.execute(stringnumber=6, stringcurrent=35)
insertp.execute(serialnumber=999956, voltage=90, stringnumber=2, timestamp=time.time())
inserts.execute(stringnumber=6, stringcurrent=35)

# Überprüfen ob die SN in entsprechendem String bereits vorhanden ist

# --> Falls ja: Objekt ganz normal mit String und Modulnummer speichern

# --> Falls nein: Überprüfen ob in entsprechendem String ein Modul als nicht gut gemeldet wurde

# -----> Falls ja: Defekt gemeldetes Modul löschen (oder muten?) und das neue in den String platzieren (quasi ersetzen)

# -----> Falls nein: Das neue Objekt (Modul) als neues Modul in diesem String speichern (zusätliches, neues Modul)

# Interrupt von statician ankicken

# class um ein Datenpaket zu erstellen (mit self.x=x etc)


# ev. Interrupt um angekickt zu werden
