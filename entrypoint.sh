#!/bin/bash

# Iniciar Elasticsearch en segundo plano
/usr/share/elasticsearch/bin/elasticsearch &

# Esperar a que Elasticsearch inicie (esto puede ajustarse según tus necesidades)
sleep 60

# Generar el token de inscripción y mostrarlo (o guardarlo según tus necesidades)
/usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s node

# Mantener el contenedor en ejecución
wait
