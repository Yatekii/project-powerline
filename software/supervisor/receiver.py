# imports
import time
from database import insertp, inserts, db


# todo While Schleife mit delay und Abfrage beim IC oder falls möglich auf Meldung von IC warten ob neue Daten gekommen sind


# todo Wenn Daten gekommen sind:
# todo I^2C entschlüsseln

# todo CRC entschlüsseln


# todo wie stringnumber definieren? übergabeparameter oder nicht?

# definition of the datapackage
class ModulePackage(object):

    def __init__(self, stringnumber, serialnumber, voltage):
        self.serialnumber = serialnumber
        self.voltage = voltage
        self.stringnumber = stringnumber
        self.timestamp = time.time()

# Creates the Object with all the data
module = ModulePackage(1, 2345, 67)  # Creates the Datapackage (stringnumber, serialnumber,voltage)

# Save the package into datebase
# todo hier nur syntaxbeispiel
insertp.execute(serialnumber=module.serialnumber, voltage=module.voltage,
                stringnumber=module.stringnumber, timestamp=time.time())

inserts.execute(stringnumber=6, stringcurrent=35, timestamp=time.time())

# todo Überprüfen ob die SN in entsprechendem String bereits vorhanden ist


t = db.execute('select id from panels where serialnumber = 123456;')
l = t.fetchall()
print(l)
if len(l) == 0:
    print('null')
else:
    print('else')

# todo --> Falls ja: Objekt ganz normal mit String und Modulnummer speichern

# todo --> Falls nein: Überprüfen ob in entsprechendem String ein Modul als nicht gut gemeldet wurde

# todo -----> Falls ja: Defekt gemeldetes Modul löschen (oder muten?) und das neue in den String platzieren (quasi ersetzen)

# todo -----> Falls nein: Das neue Objekt (Modul) als neues Modul in diesem String speichern (zusätliches, neues Modul)

# todo Interrupt von statician ankicken

# todo class um ein Datenpaket zu erstellen (mit self.x=x etc)


# todo ev. Interrupt um angekickt zu werden
