#!/bin/bash

for EACH_UPDATE in ; do LDIF_COMPLETED_STUB=; LDIF_COMPLETED_FILE=-02.Dec.2019.08.47.11.ldif; source container_variables.txt && ldapmodify -v -H :// -D "" -f updates-processing/ -w  && mv updates-processing/ updates-completed/; sleep 1; done
