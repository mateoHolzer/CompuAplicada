#!/bin/bash


function tercerLunes {
	
	MES=$1
	for D in 01 02 03 04 05 06; do
		FECHA="`date --date \"2022/$MES/$D\" +'%w'`"
		if [ $FECHA -eq 1 ]; then
			DIA="2022/$MES/$D"
		fi
	done
	PASO="`date --date \"$DIA 14 days\" +'%d/%m/%Y'`"
}

function esLaborable{

	for D in 01/01 03/21 03/24 04/02 05/01 05/25 07/09 12/08 12/25; do
		if [ $1 == $D ]; then
			echo "$1 es un feriado inamovible."
			exit 1
		fi
	done
	
	if [ $1 == 06/20 ]; then
		tercerLunes 06
		echo "$1 - Paso de inmortalidad del General Manuel Belgrano; $PASO"
		exit 1
	fi
	
	if [ $1 == 08/17 ]; then
		tercerLunes 08
		echo "$1 - Paso de inmortalidad del General Jose de San Martin; $PASO"
		exit 1
	fi
	
	DiaSemana="`date --date \"2022/$1\" +'%w'`"
	if [ $DiaSemana -eq 2 ] || [ $DiaSemana -eq 3 ]; then
		echo "Feriado del $1 cae el dia $DiaSemana de la semana y sera movido al lunes anterior."
		exit 1
	fi
	
	if [ $DiaSemana -eq 4 ] || [ $DiaSemana -eq 5 ]; then
		echo "Feriado del $1 cae el dia $DiaSemana de la semana y sera movido al lunes posterior."
		exit 1
	fi

}
