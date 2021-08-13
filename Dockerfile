ARG PDKIMAGE=puppet/pdk:latest

FROM $PDKIMAGE

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
