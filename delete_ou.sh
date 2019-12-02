#!/bin/bash

while : ; do read -p "Enter name of OU to delete (or Ctrl+c to end): " OU_NAME; echo ""; LDIF_UPDATE_FILE=3delete_ou-02.Dec.2019.08.44.14.ldif; cp -p templates/delete_ou_template.ldif updates-processing/; source container_variables.txt && sed -i "s/OU_NAME//; s/SUFFIX//" updates-processing/; done
