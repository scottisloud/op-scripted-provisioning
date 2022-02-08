#!/bin/bash

# this script will ingest a .csv file containing names and email addresses and invite each person to join the currently-logged in 1Password account. 


# TEST ENVIRONMENT: Set environment vars

. ./creds.sh

# Sign in by echoing out a password 

eval $(echo $ACCOUNTPASSWORD | op1 signin $URL $EMAIL $SECRETKEY)

# Set input data
input_file=people.csv

while IFS=, read -r input_name input_email 
do
	op1 create user $input_email "$input_name"

done < $input_file



# while IFS=, read -r input_name input_email 
# do
# 	names+=("$input_name")
# 	emails+=("$input_email")
# done < $input_file



# while IFS=, read -r in_name in_email
# do
# 	names+=("$in_name")
# 	emails+=("$in_email")
# done < $input_file


# for ((i=0; i<=${#names[@]}; i++))
# do
# 	echo $i
# done 


# for name in $names
# do
# 	for email in $emails
# 	do
# 		echo "'$name'" "'$email'"
# 	done
# done



# while IFS=, read -r name email
# do
# 	op1 create user ${email} ${name} | jq >> provision-log.json
# 	echo ${email}
# done < $input_file
