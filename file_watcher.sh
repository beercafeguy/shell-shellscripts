#!/bin/bash

date_YYYYMMDD=$1

if [ "$date_YYYYMMDD" == "" ]
then
        date_YYYYMMDD=`date +%Y%m%d`
fi

FILE_LOCATION=/apps/home/ceauser/distribution/data/case_${date_YYYYMMDD}.csv
if [ -f $FILE_LOCATION ]
then
        echo "File exists at: "$FILE_LOCATION
        exit 0
else
        echo "File :$FILE_LOCATION does not exist."
        exit 1
fi

