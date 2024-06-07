#!/bin/bash

conf=/etc/redis-envoy.yaml

sed -i 's/REDIS_HOST/'"$REDIS_HOST"'/g'  $conf
echo "REDIS_HOST: $REDIS_HOST"

/usr/local/bin/envoy -c $conf
