ARG ELK_VERSION=8.8.1

FROM docker.elastic.co/elasticsearch/elasticsearch:${ELK_VERSION}

EXPOSE 9200


