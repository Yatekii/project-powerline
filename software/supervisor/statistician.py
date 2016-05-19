# imports
from database import session, Strings, strings, Panels, panels
import time
#from sqlalchemy import func


# todo Wird per interrupt oder per timer angekickt

# creates a list with the latest stringcurrent value for the 3 strings
# (inserts a zero if there is one a not existing string)
stringnumbers = [1, 2, 3]
lastlogs = []
for stringnumber in stringnumbers:
    results = session.query(Strings).filter(strings.c.stringnumber == stringnumber).all()
    if len(results) == 0:
        lastlogs.append(0)
    else:
        lastlogs.append(results[-1])

# calculates the average of the existing stringcurrents
currents = []
#todo Abweichung definieren
percentage_deviation = 30
for log in lastlogs:
    currents.append(log.stringcurrent)
average = (sum(currents))/(sum(1 for e in currents if e))

# sets the watch flag to all logs with a higher percentage_deviation than chosen
for log in lastlogs:
    if (log.stringcurrent < average/100*(100-percentage_deviation)) | (log.stringcurrent > average/100*(100+percentage_deviation)):
        log.flag_watch = True
        session.flush()
    else:
        pass

# todo define LoockBackTime in hours
lookbacktime = 2
logstocompare = session.query(Panels).filter((panels.c.stringnumber == 1) & (panels.c.timestamp > (time.time() - lookbacktime*60*60))).all()
print(logstocompare)
for logs in logstocompare:
    print(logs.id)

# todo Modulspannungen im String vergleichen und Flags entsprechend setzen (Normalverteilung)

# todo Interrupt von evaluator ankicken
