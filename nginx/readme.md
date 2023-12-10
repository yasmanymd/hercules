For generating a self-signed certificate, please run create-certicates/create-certificates.sh

It gonna create certificates in ~/certs where docker compose will map the certs. 

For removing warning in chrome about Trusted certificates you need to add the self-signed certificate in KeyChain (Mac) and restart the browser (chrome://restart). 