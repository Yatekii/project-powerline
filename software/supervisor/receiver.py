# imports
import time
from database import insertp, inserts, db


# todo While Schleife mit delay und Abfrage beim IC oder falls möglich auf Meldung von IC warten ob neue Daten gekommen sind
# todo ev. Interrupt um angekickt zu werden


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
module = ModulePackage(5, 123456, 67.6)  # Creates the Datapackage (stringnumber, serialnumber, voltage)

# Save the package into datebase
# -----------------------------------------------------------------------------------------------------------
# todo hier nur syntaxbeispiel
insertp.execute(serialnumber=123456, voltage=30, stringnumber=3, timestamp=time.time(), flag_reported=1)
insertp.execute(serialnumber=123456, voltage=30.5, stringnumber=4, timestamp=time.time(), flag_reported=0)
insertp.execute(serialnumber=123456, voltage=30.5, stringnumber=4, timestamp=time.time(), flag_reported=1)
insertp.execute(serialnumber=123456, voltage=30.5, stringnumber=4, timestamp=time.time(), flag_reported=0)

inserts.execute(stringnumber=1, stringcurrent=35, timestamp=time.time(), flag_watch=1)
inserts.execute(stringnumber=2, stringcurrent=35, timestamp=time.time(), flag_watch=1)
inserts.execute(stringnumber=3, stringcurrent=35, timestamp=time.time(), flag_watch=1)
inserts.execute(stringnumber=4, stringcurrent=35, timestamp=time.time(), flag_watch=1)
# ------------------------------------------------------------------------------------------------------------

# check if serial number already exists in the string and write their IDs into "select"
pointers = db.execute('select id from panels where stringnumber = 5 and serialnumber = 123456;')  # todo serienummer automatisch übernehmen stringnummer?
select = pointers.fetchall()
print(select)
# serial number does not exist in the string
if len(select) == 0:
    print('SN nicht in String vorhanden')
    pointers2 = db.execute('select id from panels where stringnumber = 5 and flag_reported = 1;')
    select2 = pointers2.fetchall()
    print(select2)
    # no module from this string is reported
    if len(select2) == 0:
        print('Kein defekt gemeldtes Modul')
        insertp.execute(serialnumber=module.serialnumber, voltage=module.voltage,
                        stringnumber=module.stringnumber, timestamp=time.time())
    # Theres a reported module inside this string
    else:
        print('es existiert ein defekt gemeldetes Modul')
        # todo ersetzen des gemeldeten Modules (löschen des alten und speichern des neuen)
# SN already exists in the sring
else:
    print('SN schon in String vorhanden')
    insertp.execute(serialnumber=module.serialnumber, voltage=module.voltage,
                    stringnumber=module.stringnumber, timestamp=time.time())


# todo Interrupt von statician ankicken
