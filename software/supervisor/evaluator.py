    #imports
    from database import session, Strings, strings, String1, string1, String2, string2, String3, string3, Panels, panels
    import time, math

    string_1 = session.query(String1).all()
    string_2 = session.query(String2).all()
    string_3 = session.query(String3).all()


    # moduleitems: list with all references of one module-item of the last 24 hours
    # deviations: list with all the deviations of 24 hours of one module
    for item in string_1:
        moduleitems = session.query(Panels).filter((panels.c.serialnumber == item.serialnumber) & (panels.c.timestamp == (time.time()-24*60*60))).all()
        deviations = []
        for module in moduleitems:
            deviations.append(module.deviation)
        average = ((sum(deviations))/(len(deviations)))
        result = []
        for deviation in deviations:
            result.append((deviation-average)^2)
        st_deviation = math.sqrt(((sum(result))/(len(result)-1)))
        not_good = []
        good = []
        for deviation in deviations:
            if deviation > st_deviation:
                not_good.append(deviation)
            else:
                good.append(deviation)