#!/bin/bash

while : ; do read -p "Enter the User login name to add to a group (or Ctrl+c to end): " USER_ID; read -p "Enter the existing OU that contains the USER: " USER_OU_NAME; read -p "Enter existing group to add the user to: " GROUP_NAME; read -p "Enter the existing OU that contains the GROUP: " GROUP_OU_NAME; echo ""; LDIF_UPDATE_FILE=4add_user_to_group-02.Dec.2019.08.46.42.ldif; cp -p templates/add_user_to_group_template.ldif updates-processing/; source container_variables.txt && sed -i "s/USER_ID//; s/USER_OU_NAME//; s/GROUP_NAME//; s/GROUP_OU_NAME//; s/SUFFIX//" updates-processing/; done
