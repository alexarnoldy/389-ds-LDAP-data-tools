#!/bin/bash

for EACH_UPDATE in `ls -1 updates-processing/`; do \
LDIF_COMPLETED_STUB=`echo $EACH_UPDATE | awk -F- '{print$1}'`; \
LDIF_COMPLETED_FILE=$LDIF_COMPLETED_STUB-`date +"%d.%b.%Y.%H.%M.%S"`.ldif; \
source container_variables.txt && \
ldapmodify -v -H $LDAP_PROTOCOL://$LDAP_SERVER_FQDN$LDAP_SERVER_PORT -D "$BIND_DN" -f updates-processing/$EACH_UPDATE -w $ROOT_PASSWORD && \
mv updates-processing/$EACH_UPDATE updates-completed/$LDIF_COMPLETED_FILE; \
sleep 1; \
done
