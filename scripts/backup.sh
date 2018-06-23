#!/bin/bash

backup_src_dir=~/Backups

# Functions to get current date and time
getyear() {
  date +"%Y"
}

getmonth() {
  date +"%m"
}

getday() {
  date +"%d"
}

gettime() {
  date +"%Hh%Mm%Ss"
}


# Get date and time
yearnow=$(getyear)
monthnow=$(getmonth)
daynow=$(getday)
timenow=$(gettime)

echo $yearnow
echo $monthnow
echo $daynow
echo $timenow


# Create directory
mkdir -p $backup_src_dir/$yearnow/$monthnow/$daynow/$timenow


# Copy given files
cp -a $1 $backup_src_dir/$yearnow/$monthnow/$daynow/$timenow

echo "backup done!"
