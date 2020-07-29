#!/bin/bash

. /config/variables.conf

URL="https://www.duckdns.org/update?domains=${CERTBOT_DOMAIN}\&token=${DuckDNS_Token}\&txt=${CERTBOT_VALIDATION}"
echo "$URL"
curl "$URL"

echo "sleeping 60"
sleep 60