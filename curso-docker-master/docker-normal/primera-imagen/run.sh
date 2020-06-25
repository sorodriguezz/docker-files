#!/bin/bash

echo "Iniciando container..."
echo "Container en ejecucion..." > /var/www/html/ini.html
apachectl -DFOREGROUND