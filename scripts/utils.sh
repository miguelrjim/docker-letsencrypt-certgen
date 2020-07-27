#!/usr/bin/env bash

change_cert_owner_and_restrict_perms(){
  local cert_name="$1"
  local cert_dst="$cert_drop_path/$cert_name"

  # restrict permissions
  find "$cert_dst" -type d -exec chmod 755 {} +
  find "$cert_dst" -type f -exec chmod 644 {} +
}

drop_cert(){
  local cert_name="$1"
  local cert_type="$2"
  local cert_dst="$cert_drop_path/$cert_name"
 
  find "$cert_dst" -type f -name "*.$cert_type.pem" -delete
  if [ "$(find "$cert_dst" -type f | wc -l)" -eq 0 ]; then
    rm -rf "$cert_dst"
  fi
}

log(){
  printf "[certgen]: %b\n" "$1"
}
