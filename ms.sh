#!/usr/bin/env bash

#
# Constants.
#

YEAR=31557600000
DAY=86400000
HOUR=3600000
MIN=60000
SEC=1000

#
# Convert <str> to milliseconds.
#
# Supports:
#
#   - `y`   years
#   - `d`   days
#   - `h`   hours
#   - `m`   minutes
#   - `s`   seconds
#   - `*`   milliseconds
#

ms() {
  local str=$1
  local len=${#str}
  case $str in
    *y) echo $((${str:0:$((len - 1))} * $YEAR)) ;;
    *d) echo $((${str:0:$((len - 1))} * $DAY)) ;;
    *h) echo $((${str:0:$((len - 1))} * $HOUR)) ;;
    *m) echo $((${str:0:$((len - 1))} * $MIN)) ;;
    *s) echo $((${str:0:$((len - 1))} * $SEC)) ;;
     *) echo $str ;;
  esac
}

#
# Convert <ms> to a string representation.
#

ms_to_s() {
  local ms=$1
  if test $ms -lt $SEC; then
    printf "%d milliseconds\n" $ms
  elif test $ms -lt $MIN; then
    printf "%d seconds\n" $(($ms / $SEC))
  elif test $ms -lt $HOUR; then
    printf "%d minutes\n" $(($ms / $MIN))
  elif test $ms -lt $DAY; then
    printf "%d hours\n" $(($ms / $HOUR))
  elif test $ms -lt $YEAR; then
    printf "%d days\n" $(($ms / $DAY))
  else
    printf "%d years\n" $(($ms / $YEAR))
  fi
}