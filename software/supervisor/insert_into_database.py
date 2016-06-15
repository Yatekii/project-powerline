from database import Panels, Strings, session, panels, strings
import time

newstring = Strings()
newstring.stringnumber = 3
newstring.stringcurrent = 25.342
newstring.timestamp = time.time()
session.add(newstring)
session.flush()

# newmodule = Panels()
# newmodule.serialnumber = 1
# newmodule.voltage = 230
# newmodule.stringnumber = 230
# newmodule.timestamp = time.time()
# session.add(newmodule)
# session.flush()

