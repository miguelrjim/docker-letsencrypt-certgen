#!/bin/bash

. /config/variables.conf

curl https://www.duckdns.org/update?domains=${CERTBOT_DOMAIN}\&token=${DuckDNS_Token}\&txt=${CERTBOT_VALIDATION}

echo "sleeping 20"
sleep 20