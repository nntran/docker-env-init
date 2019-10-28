FROM alpine

#USER root
ENV ENV_CONFIG_FILE="/tmp/env.conf"

COPY entrypoint.sh /tmp/entrypoint.sh
VOLUME ["/tmp/env.conf"]
WORKDIR /tmp

ENTRYPOINT  [ "/tmp/entrypoint.sh" ]
CMD [ "/tmp/env.conf" ]