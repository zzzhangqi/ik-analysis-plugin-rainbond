FROM alpine:3

ADD elasticsearch-analysis-ik-7.15.2 /data

VOLUME [ "/usr/share/elasticsearch/plugins" ]