#!/bin/bash


if [ "$1" == "master" ]; then
    echo "Starting alluxio master"
    /alluxio-1.0.1/bin/alluxio format
    sudo /usr/bin/supervisord -c /supervisord-master.conf
elif [ "$1" == "slave" ]; then
    echo "Starting alluxio slave"
    sudo /usr/bin/supervisord -c /supervisord-slave.conf
fi

