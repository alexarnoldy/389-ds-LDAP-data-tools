#!/bin/bash

while : ; do read -p "Enter new OU name (or Ctrl+c to end): " OU_NAME; echo ""; LDIF_UPDATE_FILE=1add_ou-02.Dec.2019.08.42.43.ldif; cp -p templates/add_ou_template.ldif updates-processing/; source container_variables.txt && sed -i "s/OU_NAME//; s/SUFFIX//" updates-processing/; done
