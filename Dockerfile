ARG ELK_VERSION=8.8.1

FROM docker.elastic.co/elasticsearch/elasticsearch:${ELK_VERSION}

EXPOSE 9200

# Copia el script de entrada
COPY entrypoint.sh /usr/share/elasticsearch/entrypoint.sh
RUN chmod +x /usr/share/elasticsearch/entrypoint.sh

# Usa el script como entrada
ENTRYPOINT ["/usr/share/elasticsearch/entrypoint.sh"]
