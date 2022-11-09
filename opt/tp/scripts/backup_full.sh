#!/bin/bash


function validarDirs {


	if [[ !$(mountpoint $1 | grep 'no') && !$(mountpoint $2 | grep 'no') ]]; then
		echo true
	fi

}

function genLog {

	# Genero el log y lo mando al usuario root
	TIEMPO=$(date + "%H:%M:%S")
	
	echo "$TIEMPO - Estoy realizando un backup de la carpeta $1" >> /opt/tp/scripts/general.log
	mutt -s "backup" -i /opt/tp/scripts/general.log root

}

if [ $1 == "-h" ]; then
	echo "backup_full.sh <Origen> <Destino>"
	exit 1
else 

	if [[ -z "$1" || -z "$2" ]]; then
		echo "ERROR: Argument missing."
		echo "USAGE: $(basename $0) <Origen> <Destino>"
		exit 1
	fi
	# Elimino / para usarlo en el nombre del archivo
	dir_origen=$(echo $1 | sed -r 's/\/(\w+\d?)\/?(\w+\d?)?\/+?/\1\2/')

	if [[ -d $1 && -d $2 ]]; then
		
		FECHA_HOY=`date +%Y%m%d`
		name_backup="${dir_origen}_backup_${FECHA_HOY}.tar.gz"
		
		# Creamos el archivo, lo comprimimos y lo mandamos a la ruta destino
		touch $name_backup
		tar czvf $name_backup $1
		mv $name_backup $2
		
		# Si el archivo esta en la ruta destino se genera el log
		if [ -e $2$name_backup ]; then
			genLog $1
		fi

	fi

fi
