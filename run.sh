#!/bin/sh

ES_ID=$(docker run -d -p 9200:9200 -p 9300:9300 himedia/elasticsearch)
ES_IP=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' ${ES_ID})
echo $ES_ID
echo $ES_IP
