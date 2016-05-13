# imports
import time
from database import Panels, Strings, session, panels, strings

# todo While Schleife mit delay und Abfrage beim IC oder falls moeglich auf Meldung von IC warten ob neue Daten gekommen sind
# todo ev. Interrupt um angekickt zu werden

# todo Wenn Daten gekommen sind:
# todo I^2C entschluesseln

# todo CRC entschluesseln und kontrollieren => log verwerfen falls NG

# todo wie stringnumber definieren? uebergabeparameter oder nicht?

# todo wie unterscheiden zwischen strommessung und datenpacket, wie damit umgehen?


# definition of the datapackages
class ModulePackage(object):

    def __init__(self, serialnumber, voltage, stringnumber):
        self.serialnumber = serialnumber
        self.voltage = voltage
        self.stringnumber = stringnumber
        self.timestamp = time.time()


class StringPackage(object):

    def __init__(self, stringnumber, stringcurrent):
        self.stringnumber = stringnumber
        self.stringcurrent = stringcurrent
        self.timestamp = time.time()


# Creates the Object with all the data todo (gets data from receiver)

modulepackage = ModulePackage(123459, 35.63, 30)  # Creates the Datapackage (serialnumber, voltage, stringnumber)
stringpackage = StringPackage(3, 30)         # Creates the Datapackage (stringnumber, stringcurrent)

# Defines the functions to creates the database items and save them into the database
def insert_panel():
    modulelog = Panels()
    modulelog.serialnumber = modulepackage.serialnumber
    modulelog.voltage = modulepackage.voltage
    modulelog.stringnumber = modulepackage.stringnumber
    modulelog.timestamp = modulepackage.timestamp
    session.add(modulelog)
    session.flush()


def insert_string():
    stringlog = Strings()
    stringlog.stringnumber = stringpackage.stringnumber
    stringlog.stringcurrent = stringpackage.stringcurrent
    stringlog.timestamp = stringpackage.timestamp
    session.add(stringlog)
    session.flush()


# checks if String already exists in the string
# if yes: save the datalog
# if no: check if theres a reported module in the string
#        if no: save the datalog
#        if yes: delete the reported logs and save the new one
existinpanels = session.query(Panels).filter((panels.c.serialnumber == modulepackage.serialnumber) & (panels.c.stringnumber == modulepackage.stringnumber)).all()
if len(existinpanels) != 0:
    insert_panel()
else:
    reportedpanels = session.query(Panels).filter((panels.c.flag_reported == 1) & (panels.c.stringnumber == modulepackage.stringnumber)).all()
    print(reportedpanels)
    if len(reportedpanels) == 0:
        insert_panel()
    else:
        for defectivpanels in reportedpanels:
            session.delete(defectivpanels)
        insert_panel()

# todo das gleiche noch mit strings

# todo Interrupt von statician ankicken
