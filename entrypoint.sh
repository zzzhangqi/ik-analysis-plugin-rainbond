#!/bin/bash


if [ ! -d "/usr/share/elasticsearch/plugins/analysis-ik" ]; then
  echo "elasticsearch plugins directory is not exist"
  if mkdir -p /usr/share/elasticsearch/plugins/analysis-ik; then
    echo "create elasticsearch plugins directory success"
  else
    echo "create elasticsearch plugins directory failed"
  fi
fi


if [ -n "$(ls -A /usr/share/elasticsearch/plugins/analysis-ik)" ]; then
  echo "elasticsearch plugins directory is not empty"
else
  echo "elasticsearch plugins directory is empty"
  if cp -r /data/* /usr/share/elasticsearch/plugins/analysis-ik; then
    echo "copy elasticsearch plugins success"
  else
    echo "copy elasticsearch plugins failed"
  fi
fi