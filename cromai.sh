#!/bin/bash

while true; do
    pid=$(cat pid) ## Obtém pid do arquivo pid.
    [ $? -ne 0 ] && echo "Não foi possível obter o pid." >> cromai.log
    if [ $(ps -p ${pid} | grep -c python3) -eq 1 ]; ## Conta o número de ocorrências do PID fornecido.
    then
        echo "Its Alive!"
    else
        echo "Its dead!"
        python3 cromai.py &
        [ $? -ne 0 ] && echo "Houve erro na execução do Python Script." >> cromai.log
fi
sleep 1
done