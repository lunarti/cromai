#!/bin/bash

while true; do
    pid=$(cat pid) ## Obtém pid do arquivo pid.
    if [ $(ps -p ${pid} | grep -c python3) -eq 1 ]; ## Conta o número de ocorrências do PID fornecido.
    then
        echo "Its Alive!"
    else
        echo "Its dead!"
        python3 cromai.py &
fi
sleep 1
done