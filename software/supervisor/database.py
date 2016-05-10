# imports
from sqlalchemy import MetaData, Column, Table, Integer, create_engine
#todo nur debug - wieder rausnehmen
import time

# Erstellen des Database-File
db = create_engine('sqlite:///powerline.db')

# Ausgaben unterdrücken
db.echo = False

# Metadaten erstellen
metadata = MetaData(bind=db)

# Struktur des Panel-Tables definieren

panels = Table('panels', metadata,
               Column('id', Integer, primary_key=True, autoincrement=True),
               Column('serialnumber', Integer),
               Column('voltage', Integer),
               Column('stringnumber', Integer),
               Column('timestamp', Integer)
               )
insertp = panels.insert()

# Alter Table löschen falls vorhanden todo(noch rausnehmen?)
panels.drop(db, checkfirst=False)

# Panel-Table erstellen
panels.create()

# Struktur des String-Tables definieren

strings = Table('strings', metadata,
                Column('id', Integer, primary_key=True, autoincrement=True),
                Column('stringnumber', Integer),
                Column('stringcurrent', Integer)
                )
inserts = strings.insert()

# Alter Table löschen falls vorhanden todo(noch rausnehmen?)
strings.drop(db, checkfirst=False)

# String-Table erstellen
strings.create()


#todo nur zu debugzwecken
insertp.execute(serialnumber=123456, voltage=30, stringnumber=4, timestamp=time.time())
inserts.execute(stringnumber=27, stringcurrent=35)