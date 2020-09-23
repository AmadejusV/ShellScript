#! /bin/sh
echo "What is your first name?" #message output
read FNAME  #taking input for FNAME
LEN=${#FNAME} #checking FNAME symbol length
echo "Your first name is $LEN symbols long."
echo "What is your last name?"
read LNAME
echo "I'll make a directory called ${LNAME}"
if [ ! -d "$LNAME" ] #checking if a directory named after input LNAME doesn't exist using if
then
mkdir "${LNAME}" #creating LNAME directory
echo "Would you like to copy passwd to ${LNAME}? Enter yes or no"
read ANSWER  #asking to confirm copying of passwd to LNAME 
        if [ $ANSWER = "yes" ]
        then
        echo "Copying passwd file from /etc directory to ${LNAME}"
        cp /etc/passwd ${LNAME} #copying from etc dir to LNAME
        echo "Done"
        else
        echo "Copying refused"
        fi
else
echo "Such directory already exists"
fi
