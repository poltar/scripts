#!/usr/bin/env python

import sys
import subprocess

def main():
    if (len(sys.argv) > 1):
        if (sys.argv[1] == "Exit i3"):
            subprocess.run(["i3-msg", "exit"])
        elif (sys.argv[1] == "Sleep"):
            subprocess.run(["systemctl", "suspend"])
        elif (sys.argv[1] == "Shutdown"):
            subprocess.run(["shutdown", "0"])
        elif (sys.argv[1] == "Reboot"):
            subprocess.run(["reboot"])
    else:
        print ("Exit i3")
        print ("Sleep")
        print ("Shutdown")
        print ("Reboot")

if __name__ == "__main__":
    main()
