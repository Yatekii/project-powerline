# imports
import time
from database import insertp, inserts, db


# todo nur zu Testzwecken
# ----------------------------------------------
insertp.execute(serialnumber=123456, voltage=30, stringnumber=3, timestamp=time.time(), flag_reported=1)
insertp.execute(serialnumber=123456, voltage=30.5, stringnumber=4, timestamp=time.time(), flag_reported=0)
insertp.execute(serialnumber=123456, voltage=30.5, stringnumber=4, timestamp=time.time(), flag_reported=1)
insertp.execute(serialnumber=123456, voltage=30.5, stringnumber=4, timestamp=time.time(), flag_reported=0)

inserts.execute(stringnumber=1, stringcurrent=15, timestamp=time.time(), flag_watch=1)
inserts.execute(stringnumber=2, stringcurrent=35, timestamp=time.time(), flag_watch=1)
inserts.execute(stringnumber=3, stringcurrent=55, timestamp=time.time(), flag_watch=1)
inserts.execute(stringnumber=4, stringcurrent=75, timestamp=time.time(), flag_watch=1)
# -----------------------------------------------

# todo Wird per interrupt oder per timer angekickt
# todo manuell definiert zu debuggen
# stringcurrents = [10, 5, 3, 3.6, 36, 25.45, 23.42, 23]
# todo Die richtigen Daten aus der Datenbank holen
# Get the stringcurrent data from the database
pointers_stringcurrents = db.execute('select stringcurrent from strings')  # todo serienummer automatisch übernehmen stringnummer?
# todo auskommentiert da oben mauell definiert
stringcurrents_row_proxys = pointers_stringcurrents.fetchall()
print(stringcurrents_row_proxys)
print(type(stringcurrents_row_proxys))
stringcurrents[0] = stringcurrents_row_proxys.values()
print(stringcurrents)



# todo Stringströme vergleichen (?) und entsprechend Flags setzen (wo?) (Durchschnitt mit prozentualer Abweichung)
# search all items that are out of specification
#res = 0
#critical_values = []
#for i in stringcurrents:
    #res = res + i
    #schnitt = res/len(stringcurrents)
#for i in stringcurrents:
    #if i < schnitt*0.5 or i > schnitt*1.5:
        # todo altes ersetzen und neues einfügen
        #print(i)


# todo Modulspannungen im String vergleichen und Flags entsprechend setzen (Normalverteilung)


# todo Interrupt von evaluator ankicken

# todo Interrupt falls benötigt

# todo Timer falls benötigt
