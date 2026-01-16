#!/bin/bash

#Making a directory which will contain log files
mkdir logs

#Initializing a log file 
LOG_FILE="logs/script_log.txt"

#Creating a log function which will take as input a string which is message and print it in the log file
log()
{
	echo "$(date '+%Y-%m-%d %H:%M:%S ') - $1 " >> $LOG_FILE
}



#Asking user how many txt and jpeg file he/she wants to create 
#read command used to take input and -p helps in printing message while asking input

read -p "How many .txt files needs to be created : " txtNum
read -p "How many .jpeg files needs to be created : " jpegNum

#Adding the details in log
log "How many .txt files needs to be created : $txtNum"
log "How many .jpeg files needs to be created : $jpegNum"
log "***********************************************"

# We will use for loop to create file with name as num.txt for eg :- 1.txt ,2.txt

for (( i=0;i<txtNum;i++ ))
do
    filename=$(( i+1 )).txt
    touch $filename
done

for (( i=0;i<jpegNum;i++ ))
do
    filename=$(( i+1 )).jpeg
    touch $filename
done

echo "Creating File...."

#We are simulating as if file is taking some time to create for that added the sleep
sleep 2s

#Post files created print the content of the Current working directory
#Storing the result in a variable so that it can be added in logger as well

result=$(ls -lrt .)

echo "$result"

log "$result"

log "**********************************************************************"

#Asking user to input 't' for renaming text files and 'j' to rename jpeg files . 
#If user type any other character or string then user will be kept prompted to enter the choice
#User can proceed only when proper input is provided

read -p " Type t if want to rename .txt files , Type j if want to rename .jpeg file : " rename

log " Type t if want to rename .txt files , Type j if want to rename .jpeg file : "

#Creating while loop to keep user prompting in case ofwrong input
while [[ $rename != 'j' && $rename != 't' ]]
do
    echo "Typed : $rename"
    log "Typed : $rename"
    read -p " Type t if want to rename .txt files , Type j if want to rename .jpeg file : " rename
    log " Type t if want to rename .txt files , Type j if want to rename .jpeg file : "
    log "********************************************************************************"
done

#User outside while loop means inputted properly t or j
read -p " Enter the prefix you want to add to the file names : " prefix

echo " Prefix is : $prefix"
log " Prefix is : $prefix"

# if condition to decide the extension of the file based on the input character
if [[ $rename == 'j' ]]
then
    extension=".jpeg"
else
    extension=".txt"
fi

echo "Extension is : $extension"
log "Extension is : $extension"

#if condition to check the input and acordingly rename file using for loop to interate over all those 
# type of file
if [[ $rename == 'j' ]]
then
    for file in *${extension}
    do
        #echo "$file will be renamed"
        mv $file ${prefix}$file
    done
else
    for file in *${extension}
    do
        #echo "$file will be renamed"
        mv $file ${prefix}$file
    done
fi
sleep 0.5s
echo "Files Renamed..."

log "**************************************************************************"
result=$(ls -lrt .)

echo "$result"

log "$result"

log "**********************************************************************"
