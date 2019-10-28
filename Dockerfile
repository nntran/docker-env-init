FROM alpine

#USER root
ENV ENV_CONFIG_FILE="/tmp/env.conf"

COPY docker-entrypoint.sh /tmp/docker-entrypoint.sh
VOLUME ["/tmp/env.conf"]
WORKDIR /tmp

ENTRYPOINT  [ "/tmp/docker-entrypoint.sh" ]
CMD [ "/tmp/env.conf" ]