#!/bin/bash

while : ; do \
read -p "Enter new User login name (or Ctrl+c to end): " USERID; \
read -p "Enter the existing OU to create the user in: " OU_NAME; \
read -p "Enter the SSHA hash of the user's password 
(if needed, use https://www.mkpasswd.net/ then select the ldap ssha hash type): " PASSWORD_HASH; \
read -p "Enter new User's first name: " FIRST_NAME; \
read -p "Enter new User's last name: " SURNAME; \
read -p "Enter new User's full name: " FULL_NAME; \
read -p "Enter new User's email address: " EMAIL_ADDRESS; \
echo ""; \
LDIF_UPDATE_FILE=3add_user-`date +"%d.%b.%Y.%H.%M.%S"`.ldif; \
cp -p templates/add_user_template.ldif updates-processing/$LDIF_UPDATE_FILE; \
source container_variables.txt && \
sed -i "s/USERID/$USERID/; \
s/OU_NAME/$OU_NAME/; \
s/SUFFIX/$SUFFIX/; \
s/PASSWORD_HASH/$PASSWORD_HASH/; \
s/FIRST_NAME/$FIRST_NAME/; \
s/SURNAME/$SURNAME/; \
s/FULL_NAME/$FULL_NAME/; \
s/EMAIL_ADDRESS/$EMAIL_ADDRESS/" updates-processing/$LDIF_UPDATE_FILE; \
done
