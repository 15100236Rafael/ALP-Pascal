#!/usr/bin/python
#Script to move a copy of the source code and
#compile the file also ereaseing the copy of the source
from subprocess import call
import shutil
progName = raw_input("Input sourcecode name: ")
shutil.copy2(progName,"executables")
call(["fpc", "executables/"+progName])
call(["rm","executables/"+progName])