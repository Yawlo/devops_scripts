#!/bin/bash

ERRORES=$(grep "ERROR" app.log)

if [ -n "$ERRORES" ]; then
	echo $ERRORES >> errors.txt
else
	echo "No hay errores"
fi
