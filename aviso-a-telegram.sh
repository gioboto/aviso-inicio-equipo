#!/bin/bash
#
#script aviso-a-telegram.sh
# Version : 1.0
#Para envio de mensajes a bot de telegram sobre inicio de un equipo
#Autor : Ing. Jorge Navarrete
#mail : jorge_n@web.de
#Fecha : 2019-11-20

#script aviso-a-telegram.sh
#Para envio de mensajes a bot de telegram sobre inicio de un equipo

TOKEN="569774679:AAEl8uSwPNDzHwM_MCCR1-iXi4C6zLGeoqU"
ID="152054272"
MENSAJE="Servidor de Baños, Refugio,  inicializado"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE"  > /dev/null


#en el cron de linux poner la siguiente linea:
# @reboot ( sleep 100 ; sh /usr/local/bin/aviso-a-telegram.sh )
