#!/bin/bash

# 判断目录不为空
if [ -n "$(ls -A /usr/share/elasticsearch/plugins)" ]; then
  echo "elasticsearch plugins directory is not empty"
else
  echo "elasticsearch plugins directory is empty"
  cp -r /data/elasticsearch-analysis-ik-7.15.2/* /usr/share/elasticsearch/plugins
  echo "copy elasticsearch plugins success"
fi