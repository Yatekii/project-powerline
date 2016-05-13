# imports
from database import session, Strings, strings


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
print(lastlogs)
currents = []
percentage_deviation = 30
for log in lastlogs:
    currents.append(log.stringcurrent)
print(currents)
average = (sum(currents))/(sum(1 for e in currents if e))
print(average)

for log in lastlogs:
    if log.stringcurrent > average*percentage_deviation*0.1

# todo Modulspannungen im String vergleichen und Flags entsprechend setzen (Normalverteilung)

# todo Interrupt von evaluator ankicken

# todo Interrupt falls benötigt

# todo Timer falls benötigt
