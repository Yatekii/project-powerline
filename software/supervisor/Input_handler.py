# todo wird alle 30 minuten vom Main angekickt

# imports
from database import session, Strings, strings, String1, string1, String2, string2, String3, string3, Panels, panels
import time
import quick2wire.i2c as i2c


# function to write a database-item into the strings table
def write_string_into_database(strnumber, strcurrent):
    newcurrent = Strings()
    newcurrent.stringnumber = strnumber
    newcurrent.stringcurrent = strcurrent
    newcurrent.timestamp = time.time()
    session.add(newcurrent)
    session.flush()


# function to write a database-item into the panles table
def write_panel_into_database(serialnumber, stringnumber, voltage):
    newvoltage = Panels()
    newvoltage.stringnumber = stringnumber
    newvoltage.serialnumber = serialnumber
    newvoltage.voltage = voltage
    newvoltage.timestamp = time.time()
    session.add(newvoltage)
    session.flush()
    #todo überprüfen ob sn in stringsx table schon vorhanden falls nicht reinschreiben


# function to wirte a database item into the string1 table
def write_string1_into_database(serialnumber):
    newstringitem = String1()
    newstringitem.serialnumber = serialnumber
    session.add(newstringitem)
    session.flush()


# function to wirte a database item into the string2 table
def write_string2_into_database(serialnumber):
    newstringitem = String2()
    newstringitem.serialnumber = serialnumber
    session.add(newstringitem)
    session.flush()


# function to wirte a database item into the string3 table
def write_string3_into_database(serialnumber):
    newstringitem = String3()
    newstringitem.serialnumber = serialnumber
    session.add(newstringitem)
    session.flush()


# function to get the current-values of a string
def read_stringcurrents_i2c(stringnumber):
    address_read = 0b01101001
    address_write = 0b01101000
    register = 0
    if stringnumber == 1:
        register = 0b01100011
    elif stringnumber == 2:
        register = 0b01100101
    elif stringnumber == 3:
        register = 0b01100111
    with i2c.I2CMaster() as bus:
        read_results = bus.transaction(i2c.writing_bytes(address_write, register), i2c.reading(address_read, 2))
        received_data = read_results[0][0]
        # todo check crc
        # todo split the currentvalue from the rest of the data to return it
    return current


# function to get the current voltage of one module
def read_modulevoltage_i2c(stringnumber, serialnumber):
    register = #todo
    address_read = 0
    address_write = 0
    if stringnumber == 1:
        address_read = 0b10011011
        address_write = 0b10011010
    elif stringnumber == 2:
        address_read = 0b10011001
        address_write = 0b10011000
    elif stringnumber == 3:
        address_read = 0b10010011
        address_write = 0b10010010
    with i2c.I2CMaster() as bus:
        read_results = bus.transaction(i2c.writing_bytes(address_write, register, bin(serialnumber)), i2c.reading(address_read, 2))
        received_data = read_results[0][0]
        #todo check CRC
        # todo split infos in SN and voltage
    return (sn,voltage)


# function to get the stringcurrents of all 3 strings and write them into the database
def stringcurrents_request():
    stringnumbers = [1, 2, 3]
    for stringnumber in stringnumbers:
        current = read_stringcurrents_i2c(stringnumber)
        #todo current in richtige form bringen
        write_string_into_database(stringnumber, current)


# function that compares the sringcurrents and sets a flag if the deviation is too high
def string_compare():
    # creates a list with the latest stringcurrent values for the 3 strings
    # (inserts a zero if there is one a not existing string)
    stringnumbers = [1, 2, 3]
    latestlogs = []
    for stringnumber in stringnumbers:
        results = session.query(Strings).filter(strings.c.stringnumber == stringnumber).all()
        if len(results) == 0:
            latestlogs.append(0)
        else:
            latestlogs.append(results[-1])

    # calculates the average of the existing stringcurrents
    currents = []
    #todo Abweichung definieren
    percentage_deviation = 30
    for log in latestlogs:
        currents.append(log.stringcurrent)
    average = (sum(currents))/(sum(1 for e in currents if e)) # ignores the zero if there is one

    # sets the watch flag to all logs with a higher percentage_deviation than chosen
    for log in latestlogs:
        if (log.stringcurrent < average/100*(100-percentage_deviation)) | (log.stringcurrent > average/100*(100+percentage_deviation)):
            log.flag_watch = True
            session.flush()
        else:
            pass


# function to get the voltages of all the modules in the system and writes them into the database
def modulevoltage_request():
    string_1 = session.query(String1).all()
    string_2 = session.query(String2).all()
    string_3 = session.query(String3).all()

    for item in string_1:
        (sn, voltage) = read_modulevoltage_i2c(1, item.serialnumber)
        #todo voltage in richtiges format anpassen
        #todo timer auf antwort warten (wie realisieren)
        if voltage == 0: #todo muss noch angepasst werden
        # todo if keine antwort
            historycheck = session.query(Panels).filter((panels.c.serialnumber == item.serialnumber) & (panels.c.timestamp > (time.time() - 24*60*60))).all()
            if len(historycheck)==0:
                #todo melden auslösen
                pass #zu testzwecken - wieder rausnehmen
            else:
                pass
        #todo else antwort kommt
        else:
            write_panel_into_database(item.serialnumber, 1, voltage)

    for item in string_2:
        (sn, voltage) = read_modulevoltage_i2c(2, item.serialnumber)
        #todo voltage in richtiges format anpassen
        #todo timer auf antwort warten (wie realisieren)
        if voltage == 0: #todo muss noch angepasst werden
        # todo if keine antwort
            historycheck = session.query(Panels).filter((panels.c.serialnumber == item.serialnumber) & (panels.c.timestamp > (time.time() - 24*60*60))).all()
            if len(historycheck)==0:
                #todo melden auslösen
                pass #zu testzwecken - wieder rausnehmen
            else:
                pass
        #todo else antwort kommt
        else:
            write_panel_into_database(item.serialnumber, 2, voltage)

    for item in string_3:
        (sn, voltage) = read_modulevoltage_i2c(3, item.serialnumber)
        #todo voltage in richtiges format anpassen
        #todo timer auf antwort warten (wie realisieren)
        if voltage == 0: #todo muss noch angepasst werden
        # todo if keine antwort
            historycheck = session.query(Panels).filter((panels.c.serialnumber == item.serialnumber) & (panels.c.timestamp > (time.time() - 24*60*60))).all()
            if len(historycheck)==0:
                #todo melden auslösen
                pass #zu testzwecken - wieder rausnehmen
            else:
                pass
        #todo else antwort kommt
        else:
            write_panel_into_database(item.serialnumber, 3, voltage)


    latestlogs = []
    values = []
    for panel in string_1:
        result = session.query(Panels).filter((panels.c.serialnumber == panel.serialnumber) & (panels.c.timestamp > (time.time() - 60*60))).all()
        latestlogs.append(result[-1])
    for log in latestlogs:
        values.append(log.voltage)
    max_value = max(values)
    for log in latestlogs:
        deviation = max_value - log.voltage
        log.deviation = deviation
        session.flush()

    latestlogs = []
    values = []
    for panel in string_2:
        result = session.query(Panels).filter((panels.c.stringnumber == panel.serialnumber) & (panels.c.timestamp > (time.time() - 60*60))).all()
        latestlogs.append(result[-1])
    for log in latestlogs:
        values.append(log.voltage)
    max_value = max(values)
    for log in latestlogs:
        deviation = max_value - log.voltage
        log.deviation = deviation
        session.flush()

    latestlogs = []
    values = []
    for panel in string_1:
        result = session.query(Panels).filter((panels.c.stringnumber == panel.serialnumber) & (panels.c.timestamp > (time.time() - 60*60))).all()
        latestlogs.append(result[-1])
    for log in latestlogs:
        values.append(log.voltage)
    max_value = max(values)
    for log in latestlogs:
        deviation = max_value - log.voltage
        log.deviation = deviation
        session.flush()



# main sequence:
stringcurrents_request()
string_compare()
modulevoltage_request()
