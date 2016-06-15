# imports
from sqlalchemy import MetaData, Column, Table, Integer, Float, Boolean, create_engine
from sqlalchemy.orm import mapper, create_session

# creates the database file
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

# creates panels table if there isn't a existing one
panels.create(checkfirst=True)

# defines structure of the strings table
strings = Table('strings', metadata,
                Column('id', Integer, primary_key=True, autoincrement=True),
                Column('stringnumber', Integer),
                Column('stringcurrent', Integer),
                Column('timestamp', Integer),
                Column('flag_watch', Boolean, default=False),
                Column('flag_reported', Boolean, default=False)
                )

# creates strings table if there isn't a existing one
strings.create(checkfirst=True)


# creates the Panels class for object mapping
class Panels(object):
    pass


# creates the Strings class for object mapping
class Strings(object):
    pass

# creates the two mappers
panelmapper = mapper(Panels, panels)
stringmapper = mapper(Strings, strings)

# creates the session
session = create_session()

