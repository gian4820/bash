#! /bin/bash

status='active'

if [ $status = "active" ]
then
    echo "Server is active"
else
    echo "Server is standby"
fi