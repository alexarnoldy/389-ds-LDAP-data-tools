#!/bin/bash

while : ; do \
read -p "Enter name of Group to delete (or Ctrl+c to end): " GROUP_NAME; \
read -p "Enter the OU that contains the group to delete: " OU_NAME; \
echo ""; \
LDIF_UPDATE_FILE=2delete_group-`date +"%d.%b.%Y.%H.%M.%S"`.ldif; \
cp -p templates/delete_group_template.ldif updates-processing/$LDIF_UPDATE_FILE; \
source container_variables.txt && \
sed -i "s/GROUP_NAME/$GROUP_NAME/; \
s/OU_NAME/$OU_NAME/; \
s/SUFFIX/$SUFFIX/" updates-processing/$LDIF_UPDATE_FILE; \
done
