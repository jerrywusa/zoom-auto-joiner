#!/bin/bash
TMRW_DAY_OF_WEEK=$(date -v+1d +"%a")
TMRW_CAL_DATE=$(date -v+1d +"%m/%d/%y")
case $TMRW_DAY_OF_WEEK in
    'Mon' | 'Thu')
        # setting Mon/Thu schedule
        # Period 1
        sudo pmset schedule wakeorpoweron "$TMRW_CAL_DATE 07:58:00"
        # Period 2
        sudo pmset schedule wakeorpoweron "$TMRW_CAL_DATE 09:48:00"
        # Period 3
        sudo pmset schedule wakeorpoweron "$TMRW_CAL_DATE 12:18:00"
        ;;

    'Tue' | 'Fri')
        # setting Tue/Fri schedule
        # Period 4
        sudo pmset schedule wakeorpoweron "$TMRW_CAL_DATE 08:58:00"
        # Period 5
        sudo pmset schedule wakeorpoweron "$TMRW_CAL_DATE 10:48:00"
        # Period 6
        sudo pmset schedule wakeorpoweron "$TMRW_CAL_DATE 13:13:00"
        ;;

    'Wed')
        # Advisory
        sudo pmset schedule wakeorpoweron "$TMRW_CAL_DATE 08:58:00"
        ;;

    'Sat')
        # setting Mon schedule
        MON_CAL_DATE=$(date -v+3d "+%m/%d/%y")
        # Period 1
        sudo pmset schedule wakeorpoweron "$MON_CAL_DATE 07:58:00"
        # Period 2
        sudo pmset schedule wakeorpoweron "$MON_CAL_DATE 09:48:00"
        # Period 3
        sudo pmset schedule wakeorpoweron "$MON_CAL_DATE 12:18:00"
        ;;

    'Sun')
        # setting Mon schedule
        MON_CAL_DATE=$(date -v+2d "+%m/%d/%y")
        # Period 1
        sudo pmset schedule wakeorpoweron "$MON_CAL_DATE 07:58:00"
        # Period 2
        sudo pmset schedule wakeorpoweron "$MON_CAL_DATE 09:48:00"
        # Period 3
        sudo pmset schedule wakeorpoweron "$MON_CAL_DATE 12:18:00"
        ;;
esac
