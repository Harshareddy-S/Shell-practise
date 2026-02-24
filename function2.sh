USERID=$(id -u)
LOGS_FOLDER= "/var/log/Shell-practise"
LOGS_FILE="/var/log/Shell-practise/$0.log"

if [ $USERID -ne 0 ]; then
    echo "Try in root directory"
    exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE() {
if [ $1 -ne 0 ]; then
    echo "$2 ...Failure"
    exit 1
else
    echo "$2 ... Success"
fi
}

dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "nginx intalling"

# dnf install Mysql -y &>> $LOGS_FILE
# VALIDATE $? "Mysql intalling"

# dnf install nodejs -y &>> $LOGS_FILE
# VALIDATE $? "nodejs intalling"