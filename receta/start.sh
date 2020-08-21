#!/bin/bash

# turn on bash's job control
set -m

echo "Starting rabbit"
rabbitmq-server &

echo "Downloading latest middleware"
cd mule/apps
wget https://s3.amazonaws.com/hyperloopupv/middleware.zip
cd ../../

echo "Starting mule server"
echo "Para ver los logs de mule, abrir un nuevo terminal en el contenedor y ejecutar: "
echo "tail -f /mule/logs/hyperloop-tcp-receiver.log"
./mule/bin/mule