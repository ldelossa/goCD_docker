FROM java:latest
MAINTAINER Louis DeLosSantos (louis@vimeo.com)

ENV GO_SERVER=localhost

RUN \
   echo "Updating Apt Cache..." && \
   apt-get update; apt-get install wget -y && \
   echo "Downloading GoCD Server" && \
   wget -O /tmp/go-server-16.12.0-4352.zip https://download.gocd.io/binaries/16.12.0-4352/generic/go-server-16.12.0-4352.zip && \
   echo "Installing Downloaded Deb" && \
   unzip /tmp/go-server-16.12.0-4352.zip -d /opt/ && \
   echo "Setting executable on server.sh" && \
   chmod u+x /opt/go-server-16.12.0/server.sh

EXPOSE 8153
EXPOSE 8154

CMD ["/opt/go-server-16.12.0/server.sh"]
