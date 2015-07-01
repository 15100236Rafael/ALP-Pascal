#!/usr/bin/python
from subprocess import call
import shutil
progName = raw_input("Input sourcecode name:")
shutil.copy2(progName,"executables")
call(["fpc", "executables/"+progName])