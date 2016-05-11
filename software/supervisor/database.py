# imports
import time
from sqlalchemy import MetaData, Column, Table, Integer, Float, Boolean, create_engine
from sqlalchemy.orm import mapper, create_session

# Creates the database file
db = create_engine('sqlite:///powerline.db')

# disables database outputs
db.echo = False

# creates metadata
metadata = MetaData(bind=db)

# defines structure of the panels table
panels = Table('panels', metadata,
               Column('id', Integer, primary_key=True, autoincrement=True),
               Column('serialnumber', Integer),
               Column('voltage', Float),
               Column('stringnumber', Integer),
               Column('timestamp', Integer),
               Column('flag_watch', Boolean, default=False),
               Column('flag_reported', Boolean, default=False)
               )

# todo(noch rausnehmen?) # Alter Table löschen falls vorhanden
panels.drop(db, checkfirst=True)

# creates panels table
panels.create()

# creates setter of the panels table
insertp = panels.insert()


# defines structure of the strings table
strings = Table('strings', metadata,
                Column('id', Integer, primary_key=True, autoincrement=True),
                Column('stringnumber', Integer),
                Column('stringcurrent', Integer),
                Column('timestamp', Integer),
                Column('flag_watch', Boolean, default=False),
                Column('flag_reported', Boolean, default=False)
                )

# todo(noch rausnehmen?) Alter Table löschen falls vorhanden
strings.drop(db, checkfirst=False)

# creates strings table
strings.create()

# creates setter of the panels table
inserts = strings.insert()


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


class Panels(object):
    pass


class Strings(object):
    pass

panelmapper = mapper(Panels, panels)
stringmapper = mapper(Strings, strings)

session = create_session()


testvar1 = session.query(Panels).filter(panels.c.id == 3).all()
# testvar1.flag_watch = 1
# testvar1.flag_reported = 0
# session.flush()
print(testvar1)

# # ----------------------------------------------
# insertp.execute(serialnumber=123456, voltage=30, stringnumber=3, timestamp=time.time(), flag_reported=1)
# insertp.execute(serialnumber=123456, voltage=30.5, stringnumber=4, timestamp=time.time(), flag_reported=0)
# insertp.execute(serialnumber=123456, voltage=30.5, stringnumber=4, timestamp=time.time(), flag_reported=1)
# insertp.execute(serialnumber=123456, voltage=30.5, stringnumber=4, timestamp=time.time(), flag_reported=0)
#
# inserts.execute(stringnumber=1, stringcurrent=15, timestamp=time.time(), flag_watch=1)
# inserts.execute(stringnumber=2, stringcurrent=35, timestamp=time.time(), flag_watch=1)
# inserts.execute(stringnumber=3, stringcurrent=55, timestamp=time.time(), flag_watch=1)
# inserts.execute(stringnumber=4, stringcurrent=75, timestamp=time.time(), flag_watch=1)
# # -----------------------------------------------
# s = panels.select(panels.c.voltage == 30.5)
# ultra = s.execute()
# print(s)
# print(ultra)
# mega = ultra.fetchall()
# print(mega)
# # -----------------------------------------------
