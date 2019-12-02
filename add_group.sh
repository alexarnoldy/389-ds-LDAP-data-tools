#!/bin/bash

while : ; do read -p "Enter new Group name (or Ctrl+c to end): " GROUP_NAME; read -p "Enter the existing OU to create the group in: " OU_NAME; echo ""; LDIF_UPDATE_FILE=2add_group-02.Dec.2019.08.43.48.ldif; cp -p templates/add_group_template.ldif updates-processing/; source container_variables.txt && sed -i "s/GROUP_NAME//; s/OU_NAME//; s/SUFFIX//" updates-processing/; done
