#!/bin/bash

. /config/variables.conf

regex="\.?([^.]+)\.duckdns\.org$"
if [[ $CERTBOT_DOMAIN =~ $regex ]]
then
    main="${BASH_REMATCH[1]}"
    URL="https://www.duckdns.org/update?domains=${main}&token=${DuckDNS_Token}&txt=${CERTBOT_VALIDATION}&clear=true"
    echo "$URL"
    curl "$URL"

    echo "sleeping 20"
    sleep 20
else
    exit 1
fi