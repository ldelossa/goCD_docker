FROM java:latest
MAINTAINER Louis DeLosSantos (louis@vimeo.com)

ENV GO_SERVER_URL=http://localhost:8154/go
COPY ./wrapper.sh /tmp/wrapper.sh

RUN \
   echo "Updating Apt Cache..." && \
   apt-get update; apt-get install wget netcat -y && \
   echo "Downloading GoCD Server" && \
   wget -O /tmp/go-agent-16.12.0-4352.zip https://download.gocd.io/binaries/16.12.0-4352/generic/go-agent-16.12.0-4352.zip && \
   echo "Installing Downloaded Deb" && \
   unzip /tmp/go-agent-16.12.0-4352.zip -d /opt/ && \
   echo "Setting executable on server.sh" && \
   chmod u+x /opt/go-agent-16.12.0/agent.sh; chmod u+x /tmp/wrapper.sh

CMD ["/tmp/wrapper.sh"]
