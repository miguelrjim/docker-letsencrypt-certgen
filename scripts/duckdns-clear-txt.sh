#!/bin/bash

. /config/variables.conf

URL="https://www.duckdns.org/update?domains=${CERTBOT_DOMAIN}&token=${DuckDNS_Token}&txt=${CERTBOT_VALIDATION}&clear=true"
echo "$URL"
curl "$URL"

echo "sleeping 20"
sleep 20