#!/bin/bash

while : ; do read -p "Enter User login name to delete (or Ctrl+c to end): " USER_ID; read -p "Enter the OU that contains the user to delete: " OU_NAME; \ 
echo ""; LDIF_UPDATE_FILE=1delete_user-02.Dec.2019.08.45.57.ldif; cp -p templates/delete_user_template.ldif updates-processing/; source container_variables.txt && sed -i "s/USER_ID//; s/OU_NAME//; s/SUFFIX//" updates-processing/; done
