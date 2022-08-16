#!/bin/bash

SITE="registry.mycompany.com"
openssl s_client -showcerts -connect ${SITE}:443 </dev/null 2>/dev/null|openssl x509 -outform PEM > ${SITE}.crt
sudo cp ${SITE}.crt /usr/local/share/ca-certificates/${SITE}.crt
sudo update-ca-certificates
sudo systemctl restart docker
