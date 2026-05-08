#!/usr/bin/env bash

echo "run nxsconfigserver-db"
if [ $1 = "2" ]; then
    docker exec  ndts python test/runtest.py
else
    docker exec  ndts python3 -m pytest test
fi
ERROR=$?
if [ $ERROR -ne "0" ]
then
    echo "ERROR "$ERROR
    exit 255
fi
