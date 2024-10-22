#!bin/bash
USERID=$(id -u)
validate (){
   echo "Exit status: $1"
   echo "What are you doing: $2"

}
if [ $USERID -ne 0 ]
echo "please run this script with root access"
exit 1
else
echo "you are super user"
fi
dnf install mysql -y
validate $? "INSTALLING MYSQL"
dnf install git -y
validate $? "Installing MYSQL"