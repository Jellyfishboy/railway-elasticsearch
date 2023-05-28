ARG ELK_VERSION=8.3.3

FROM docker.elastic.co/elasticsearch/elasticsearch:${ELK_VERSION}

RUN \
   docker-machine ssh
   sudo sysctl -w vm.max_map_count=262144
   exit

