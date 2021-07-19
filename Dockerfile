FROM easypi/alpine-arm
MAINTAINER Ovsiannikov Aleksei

WORKDIR /etc/murmur

RUN set -xe \
    && apk add --no-cache murmur \
    && mv /etc/murmur.ini .

VOLUME /etc/murmur \
       /var/lib/murmur

EXPOSE 64738/tcp \
       64738/udp

CMD ["murmurd", "-fg", "-ini", "/etc/murmur/murmur.ini"]
