#!/bin/sh

mkdir -p /etc/prom-conf/prom-rancher-sd/

cat /prometheus.yml | sed "s/environment: \$PLACEHOLDER/environment: '${ENVIRONMENT}'/" > /etc/prom-conf/prometheus.yml

exec $@
