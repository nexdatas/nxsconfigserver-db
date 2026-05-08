#!/usr/bin/env bash

echo "run nxsconfigserver-db"
if [ $1 = "2" ]; then
    docker exec  ndts python test/runtest.py
else
    docker exec  ndts python3 test/runtest.py
fi
ERROR=$?
if [ $? -ne "0" ]
then
    echo "ERROR "$ERROR
    exit 255
fi
