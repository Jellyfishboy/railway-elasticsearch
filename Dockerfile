ARG ELK_VERSION=8.8.1

FROM docker.elastic.co/elasticsearch/elasticsearch:${ELK_VERSION}

EXPOSE 9200

# Instalar curl para verificar que Elasticsearch haya iniciado
RUN yum install -y curl

# Copia el script de inicio
COPY start_elasticsearch.sh /usr/share/elasticsearch/start_elasticsearch.sh
RUN chmod +x /usr/share/elasticsearch/start_elasticsearch.sh

# Establecer el script como el comando predeterminado
CMD ["/usr/share/elasticsearch/start_elasticsearch.sh"]
