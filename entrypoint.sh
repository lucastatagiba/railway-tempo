#!/bin/sh
set -e
mkdir -p /var/tempo/wal /var/tempo/traces
chown -R 10001:10001 /var/tempo
exec /tempo -config.file=/etc/tempo.yaml
