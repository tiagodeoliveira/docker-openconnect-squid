FROM ubuntu:xenial

RUN apt-get update 
RUN apt-get install -y openconnect squid3 curl net-tools vim

COPY docker-entrypoint.sh /entrypoint.sh
COPY squid.conf /etc/squid/squid.conf

RUN chmod a+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
