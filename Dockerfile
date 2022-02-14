FROM ubuntu

RUN apt update

RUN apt -y install wget

RUN wget https://get.helm.sh/helm-v3.6.0-linux-amd64.tar.gz --no-check-certificate

RUN tar xvf helm-v3.6.0-linux-amd64.tar.gz

RUN mv linux-amd64/helm /usr/local/bin

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"] 
