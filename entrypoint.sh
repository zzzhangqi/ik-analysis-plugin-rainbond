#!/bin/bash

# 判断目录不为空
if [ -n "$(ls -A /usr/share/elasticsearch/plugins)" ]; then
    echo "dir is not empty"
else
    cp -r /data/elasticsearch-analysis-ik-7.15.2/* /usr/share/elasticsearch/plugins
fi