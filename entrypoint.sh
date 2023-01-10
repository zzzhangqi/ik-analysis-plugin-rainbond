#!/bin/bash

# 判断目录不为空
if [ -n "$(ls -A /usr/share/elasticsearch/plugins)" ]; then
  echo "elasticsearch plugins directory is not empty"
else
  echo "elasticsearch plugins directory is empty"
  if cp -r /data/* /usr/share/elasticsearch/plugins; then
    echo "copy elasticsearch plugins success"
  else
    echo "copy elasticsearch plugins failed"
  fi
fi