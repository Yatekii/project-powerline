# todo imports
from database import db

# todo Wird per interrupt oder per timer angekickt
# todo manuell definiert zu debuggen
stringcurrents = [10, 5, 3, 3.6, 36, 25.45, 23.42, 23]
# todo Die richtigen Daten aus der Datenbank holen
# Get the stringcurrent data from the database
pointers_stringcurrents = db.execute('select stringcurrent from strings;')  # todo serienummer automatisch übernehmen stringnummer?
# todo auskommentiert da oben mauell definiert
# stringcurrents = pointers_stringcurrents.fetchall()
# todo Stringströme vergleichen (?) und entsprechend Flags setzen (wo?) (Durchschnitt mit prozentualer Abweichung)
# search all items that are out of specification
res = 0
critical_values = []
for i in stringcurrents:
    res = res + i
    schnitt = res/len(stringcurrents)
for i in stringcurrents:
    if i < schnitt*0.5 or i > schnitt*1.5:
        print(i)


# todo Modulspannungen im String vergleichen und Flags entsprechend setzen (Normalverteilung)

# todo Interrupt von evaluator ankicken


# todo Interrupt falls benötigt

# todo Timer falls benötigt
