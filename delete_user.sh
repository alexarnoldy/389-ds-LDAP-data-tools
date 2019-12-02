#!/bin/bash

while : ; do \
read -p "Enter User login name to delete (or Ctrl+c to end): " USER_ID; \
read -p "Enter the OU that contains the user to delete: " OU_NAME; \
echo ""; \
LDIF_UPDATE_FILE=1delete_user-`date +"%d.%b.%Y.%H.%M.%S"`.ldif; \
cp -p templates/delete_user_template.ldif updates-processing/$LDIF_UPDATE_FILE; \
source container_variables.txt && \
sed -i "s/USER_ID/$USER_ID/; \
s/OU_NAME/$OU_NAME/; \
s/SUFFIX/$SUFFIX/" updates-processing/$LDIF_UPDATE_FILE; \
done
