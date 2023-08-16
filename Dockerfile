ARG ELK_VERSION=8.8.1
ARG TZ="America/Argentina/Buenos_Aires"

FROM docker.elastic.co/elasticsearch/elasticsearch:${ELK_VERSION}

EXPOSE 9200

ENV TZ=${TZ}
ENV discovery.type=single-node
ENV node.name=elasticsearch
ENV ES_JAVA_OPTS=-Xms1g -Xmx1g
ENV xpack.security.enabled=false



