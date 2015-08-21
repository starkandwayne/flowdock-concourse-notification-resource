FROM debian:8

RUN apt-get update
RUN apt-get install -y curl jq

COPY check /opt/resource/check
COPY in /opt/resource/in
COPY out /opt/resource/out
COPY run.sh /opt/resource/run.sh

RUN chmod +x /opt/resource/check /opt/resource/in /opt/resource/out
