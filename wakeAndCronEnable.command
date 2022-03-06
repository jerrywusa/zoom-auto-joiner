#!/bin/bash
open /Users/jerry/Desktop/shellscripts/wake.command
sleep 5
crontab /Users/jerry/Desktop/shellscripts/cronBackups/cronBackup.txt
pmset sleepnow
