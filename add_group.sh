#!/bin/bash

while : ; do \
read -p "Enter new Group name (or Ctrl+c to end): " GROUP_NAME; \
read -p "Enter the existing OU to create the group in: " OU_NAME; \
echo ""; \
LDIF_UPDATE_FILE=2add_group-`date +"%d.%b.%Y.%H.%M.%S"`.ldif; \
cp -p templates/add_group_template.ldif updates-processing/$LDIF_UPDATE_FILE; \
source container_variables.txt && \
sed -i "s/GROUP_NAME/$GROUP_NAME/; \
s/OU_NAME/$OU_NAME/; \
s/SUFFIX/$SUFFIX/" updates-processing/$LDIF_UPDATE_FILE; \
done
