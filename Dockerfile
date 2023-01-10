FROM alpine:3

ADD elasticsearch-analysis-ik-7.15.2 /data
ADD entrypoint.sh /

VOLUME [ "/usr/share/elasticsearch/plugins" ]

CMD sh /entrypoint.sh