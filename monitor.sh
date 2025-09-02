#!/bin/bash

LOG_FILE="app.log"
ERROR_FILE="errors.txt"

for i in {1..5}; do
	echo "============================================="
	echo "Verificacion $i - $(date '+%Y-%m-%d %H:%M::%S')"
	echo "---------------------------------------------"

	ERRORES=$(grep "ERROR" "$LOG_FILE")

	if [ -n "$ERRORES" ]; then
		echo "Errores encontrados : "
		echo "$ERRORES"
		echo "$ERRORES" > "$ERROR_FILE"
	else
		echo "No hay errores :)"
	fi

	sleep 2
done

echo "Monitoreo finalizado."
