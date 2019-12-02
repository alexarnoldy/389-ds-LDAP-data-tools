#!/bin/bash

while : ; do \
read -p "Enter name of OU to delete (or Ctrl+c to end): " OU_NAME; \
echo ""; \
LDIF_UPDATE_FILE=3delete_ou-`date +"%d.%b.%Y.%H.%M.%S"`.ldif; \
cp -p templates/delete_ou_template.ldif updates-processing/$LDIF_UPDATE_FILE; \
source container_variables.txt && \
sed -i "s/OU_NAME/$OU_NAME/; \
s/SUFFIX/$SUFFIX/" updates-processing/$LDIF_UPDATE_FILE; \
done
