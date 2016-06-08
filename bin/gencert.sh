#!/bin/bash

if [ $# -eq 0 ]
then
    echo Self-signed wildcard certificate generator
    echo
    echo -n Usage: $0 example.com
    echo
    exit;
fi

cd $(dirname $0)/../nginx-boilerplate/certs/

cat > openssl.cnf <<-EOF
[req]
distinguished_name = req_distinguished_name
x509_extensions = v3_req
prompt = no
[req_distinguished_name]
CN = *.$1
[v3_req]
keyUsage = keyEncipherment, dataEncipherment
extendedKeyUsage = serverAuth
subjectAltName = @alt_names
[alt_names]
DNS.1 = *.$1
DNS.2 = $1
EOF

openssl req \
  -new \
  -newkey rsa:2048 \
  -sha1 \
  -days 3650 \
  -nodes \
  -x509 \
  -keyout $1.key \
  -out $1.crt \
  -config openssl.cnf

rm openssl.cnf
