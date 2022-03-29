#Build SAP Cloud Connector image
FROM bitnami/java:11-debian-10

WORKDIR /usr/sapcc

COPY . /home

RUN apt update && \
    apt install lsof && \
    apt install nano 

EXPOSE 8443/tcp