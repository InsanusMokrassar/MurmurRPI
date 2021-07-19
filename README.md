# MurmurRPI

It is docker image for Raspberry PI to launch `Mumble` server.

## Configuration and environment

Docker compose configuration:

```yaml
version: "3.4"

services:
  murmur:
    image: insanusmokrassar/murmur
    ports:
      - "64738:64738"
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/London
    volumes:
      - "/path/to/data:/etc/murmur"
      - "/path/to/murmur.ini:/etc/murmur.ini"
      - "/path/to/lib:/var/lib/murmur"
    restart: unless-stopped

```

Here you may read more about [murmur.ini](https://wiki.mumble.info/wiki/Murmur.ini) (including `password`, `database` and other things configuration)
