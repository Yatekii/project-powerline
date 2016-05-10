# imports
from sqlalchemy import MetaData, Column, Table, Integer, Float, Boolean, create_engine

# Creates the database file
db = create_engine('sqlite:///powerline.db')

# disables database outputs
db.echo = False

# creates metadata
metadata = MetaData(bind=db)

# defines sturcture of the panels table
panels = Table('panels', metadata,
               Column('id', Integer, primary_key=True, autoincrement=True),
               Column('serialnumber', Integer),
               Column('voltage', Float),
               Column('stringnumber', Integer),
               Column('timestamp', Integer),
               Column('flag_watch', Boolean, default=False),
               Column('flag_reported', Boolean, default=False)
               )
insertp = panels.insert()

# todo(noch rausnehmen?) # Alter Table löschen falls vorhanden
panels.drop(db, checkfirst=False)

# creates panels talbe
panels.create()

# defines structure of the strings table
strings = Table('strings', metadata,
                Column('id', Integer, primary_key=True, autoincrement=True),
                Column('stringnumber', Integer),
                Column('stringcurrent', Integer),
                Column('timestamp', Integer),
                Column('flag_watch', Boolean, default=False),
                Column('flag_reported', Boolean, default=False)
                )
inserts = strings.insert()

# todo(noch rausnehmen?) Alter Table löschen falls vorhanden
strings.drop(db, checkfirst=False)

# creates sings table
strings.create()
