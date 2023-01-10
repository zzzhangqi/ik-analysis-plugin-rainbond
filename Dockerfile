FROM alpine:3

ADD elasticsearch-analysis-ik-7.15.2 /data
ADD entrypoint.sh /

CMD sh /entrypoint.sh