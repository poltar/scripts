#!/usr/bin/env python
import configparser
import os
import subprocess
import errno

def main():
    config = configparser.ConfigParser()
    config.read("/home/elf/.config/nitrogen/bg-saved.cfg")
    sections = config.sections()
    options = config.options(sections[0])
    fileoption = "file"
    subprocess.run(["wal","-i",config.get(sections[0],fileoption),"-n", "-o","wal-set","-g", "-s", "-t"])
    subprocess.run(["betterlockscreen", "-u", config.get(sections[0],fileoption)])

if __name__ == "__main__":
    main()
