#!/bin/bash

# Iniciar Elasticsearch en segundo plano
/usr/share/elasticsearch/bin/elasticsearch &

# Asegúrate de que Elasticsearch haya iniciado completamente
while [[ "$(curl -s -o /dev/null -w '%{http_code}' localhost:9200)" != "200" ]]; do
    sleep 5; 
done

# Generar el token de inscripción y mostrarlo
/usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s node

# Mantener el contenedor en ejecución
wait
