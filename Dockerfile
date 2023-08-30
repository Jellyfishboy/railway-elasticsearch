ARG ELK_VERSION=8.8.1

FROM docker.elastic.co/elasticsearch/elasticsearch:${ELK_VERSION}

EXPOSE 9200

# Copia el script de inicio
COPY entrypoint.sh /usr/share/elasticsearch/entrypoint.sh
RUN chmod +x /usr/share/elasticsearch/entrypoint.sh

# Establecer el script como el comando predeterminado
CMD ["/usr/share/elasticsearch/entrypoint.sh"]
