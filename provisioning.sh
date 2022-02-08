#!/bin/bash

# this script will ingest a .csv file containing names and email addresses and invite each person to join the currently-logged in 1Password account. 


# TEST ENVIRONMENT: Set environment vars
. ./creds.sh

# Sign in by echoing out a password 

eval $(echo $ACCOUNTPASSWORD | op signin $URL $EMAIL $SECRETKEY)

# read each line of a csv structured as `firstname lastname, email`. create the user, make the json pretty with jq, then append to log file. 
while IFS=, read -r name email
do
	op1 create user $email $name | jq >> provision-log.json
done < people.csv
