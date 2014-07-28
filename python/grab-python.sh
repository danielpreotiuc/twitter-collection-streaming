#!/bin/bash
now=$(date +"%T")
echo "Start script time : $now"
day=`date +%F-%H`
while [ -f "twitter.$day" ]
do 
  sleep 1
  day=`date +%F-%H`
done
now=$(date +"%T")
echo "Start collection time: $now"
python scrape.py > twitter.$day
now=$(date +"%T")
echo "End collection time: $now"
