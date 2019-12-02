#!/bin/bash

while : ; do read -p "Enter name of Group to delete (or Ctrl+c to end): " GROUP_NAME; read -p "Enter the OU that contains the group to delete: " OU_NAME; \ 
echo ""; LDIF_UPDATE_FILE=2delete_group-02.Dec.2019.08.44.48.ldif; cp -p templates/delete_group_template.ldif updates-processing/; source container_variables.txt && sed -i "s/GROUP_NAME//; s/OU_NAME//; s/SUFFIX//" updates-processing/; done
