#!/bin/bash

while true; do
    read -p "do you wish to save current crontab? [Y/N] " saveCronTab
    case $saveCronTab in
        [Yy]*)
            crontab -l > /Users/jerry/Desktop/shellscripts/cronBackups/cronBackup.txt
            echo saved current crontab to cronBackup.txt
            break
            ;;
        [Nn]*)
            break 
            ;;
        *)
            echo "Please type Y or N"
            ;;
    esac
done
echo -----------------------------------------------------------------------
crontab -r
echo removed current crontab
echo -----------------------------------------------------------------------
sudo pmset schedule cancelall
echo removed current pmset
echo -----------------------------------------------------------------------
cal
echo enter 1 day before the date you to resume wake and crontab
read -p 'month (mm): ' inputMonth
read -p 'day (dd): ' inputDay
read -p 'year (yy): ' inputYear
date=$inputMonth/$inputDay/$inputYear
echo 1 day before resume date: $date
echo -----------------------------------------------------------------------
sudo pmset schedule wakeorpoweron "$date 23:58:00"
echo scheduled pmset wakeorpoweron at
echo date: $date
echo time: 23:58:00
echo -----------------------------------------------------------------------
touch tempCron
echo "59 23 $inputDay $inputMonth * open /Users/jerry/Desktop/shellscripts/wakeAndCronEnable.command" >> tempCron
crontab tempCron
rm tempCron
echo scheduled crontab to open wakeAndCronEnable.command at
echo date: $date
echo time: 23:59:00
sleep 10
