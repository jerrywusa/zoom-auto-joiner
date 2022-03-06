#!/bin/bash
while true; do
    read -p "do you wish to pause wake and cron? [Y/N] " input
    case $input in
        [Yy]*)
            open /Users/jerry/Desktop/shellscripts/wakeAndCronDisable.command
            break
            ;;
        [Nn]*)
            break
            ;;
        *)
            echo "Please type Y or N"
            ;;
    esac
    echo -------------------------------------------------------------------
done
