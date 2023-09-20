ARG PDKIMAGE=puppet/pdk:2.5.0.0

FROM $PDKIMAGE

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
