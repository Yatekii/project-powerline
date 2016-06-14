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
               Column('deviation', Integer),
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
                Column('deviation', Integer),
                Column('flag_watch', Boolean, default=False),
                Column('flag_reported', Boolean, default=False)
                )

# creates strings table if there isn't a existing one
strings.create(checkfirst=True)

# defines structure of the strings table
string1 = Table('string1', metadata,
                Column('id', Integer, primary_key=True, autoincrement=True),
                Column('serialnumber', Integer),
                )

# creates string1 table if there isn't a existing one
string1.create(checkfirst=True)

string2 = Table('string2', metadata,
                Column('id', Integer, primary_key=True, autoincrement=True),
                Column('serialnumber', Integer),
                )

# creates string1 table if there isn't a existing one
string2.create(checkfirst=True)

string3 = Table('string3', metadata,
                Column('id', Integer, primary_key=True, autoincrement=True),
                Column('serialnumber', Integer),
                )

# creates string1 table if there isn't a existing one
string3.create(checkfirst=True)


# creates the Panels class for object mapping
class Panels(object):
    pass


# creates the Strings class for object mapping
class Strings(object):
    pass


# creates the String1 class for object mapping
class String1(object):
    pass


# creates the String2 class for object mapping
class String2(object):
    pass


# creates the String3 class for object mapping
class String3(object):
    pass

# creates the five mappers
panelmapper = mapper(Panels, panels)
stringmapper = mapper(Strings, strings)
string1mapper = mapper(String1, string1)
string2mapper = mapper(String2, string2)
string3mapper = mapper(String3, string3)

# creates the session
session = create_session()


# just to delete everything for debugging
# panels.drop(db)
# strings.drop(db)
# string1.drop(db)
# string2.drop(db)
# string3.drop(db)