#!/bin/sh
mkdir ~/certs
cp *.cnf ~/certs
cd ~/certs
openssl req -x509 -nodes -days 730 -newkey rsa:2048 -keyout hercules-directus.com.key -out hercules-directus.com.pem -config hercules-directus.cnf -sha256
openssl req -x509 -nodes -days 730 -newkey rsa:2048 -keyout hercules-gitea.com.key -out hercules-gitea.com.pem -config hercules-gitea.cnf -sha256
