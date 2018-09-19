#!/usr/bin/env python

import sys
import subprocess

def main():
    if (len(sys.argv) > 1):
        subprocess.run(["killall", "rofi"])
        #subprocess.run(["gksu", "rofi", "-show", "drun"])
    else:
        print ("Reopen as root")
