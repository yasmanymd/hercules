For generating a self-signed certificate valid for localhost, please run the following command in folder ~/certs, make sure to copy req.conf to ~/certs, docker-compose will mount ~/certs to the container, this way the certificates could be used in other developments: 

```
openssl req -x509 -nodes -days 730 -newkey rsa:2048 -keyout cert.key -out cert.pem -config req.cnf -sha256
```

For removing warning in chrome about Trusted certificates you need to add the self-signed certificate in KeyChain (Mac) and restart the browser (chrome://restart). 