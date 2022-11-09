#!/bin/bash

SERVICE=$1

if [ !$(pgrep -x $SERVICE) ]; then
	echo "El servicio $SERVICE no esta en ejecucion." | mutt -s "Servicios" root
fi
