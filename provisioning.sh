#!/bin/bash

# this script will ingest a .csv file containing names and email addresses and invite each person to join the currently-logged in 1Password account. 

people=<List of people from .csv>

LIST="${LIST}${LIST:+,}${NEWVAL}"

for person in $people
do
	op user invite --name "[NAME]" --email "[EMAIL]"
done