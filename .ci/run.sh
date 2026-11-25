#!/usr/bin/env bash

echo "run nxsconfigserver-db"
docker exec  ndts python3 -m pytest test
ERROR=$?
if [ $ERROR -ne "0" ]
then
    echo "ERROR "$ERROR
    exit 255
fi
