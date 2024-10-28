#!bin/bash
USERID=$(id -u)
validate (){
   if [ $1 -ne 0 ]
   then
   echo "$2....Failure"
   else
   echo "$2.....Success"
   fi
}
if [ $USERID -ne 0 ]
then
echo "please run this script with root access"
exit 1
else
echo "you are super user"
fi
dnf install mysql -y
validate $? "INSTALLING MYSQL"
dnf install git -y
validate $? "Installing GIT"