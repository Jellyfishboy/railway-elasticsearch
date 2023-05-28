ARG ELK_VERSION=8.3.3

FROM docker.elastic.co/elasticsearch/elasticsearch:${ELK_VERSION}

RUN echo "vm.max_map_count=262144" | sudo tee /etc/sysctl.d/90-max_map_count.conf

