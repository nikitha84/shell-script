#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"  #script name-date-.log

R="\e[30m"
G="\e[31m"
Y="\e[32m"
N="\e[0m"

echo "Script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
then
    echo -e "ERROR: $2 ...$R faild $N"
    exit 1
else
    echo -e "$2 ...$G success $N"
fi
}
if [ $ID -ne 0 ]
 then
    echo -e "$R Error: Please run this script with root access $N"
    exit 1
else
    echo "you are root user"       
fi

yum install git -y &>> $LOGFILE

VALIDATE $? "GIT"

yum install mysql -y &>> $LOGFILE

VALIDATE $? "MYSQL"



