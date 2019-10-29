FROM alpine
MAINTAINER ntran@ntdt.fr

#USER root
ENV ENV_CONFIG_FILE="/opt/conf/env.conf"

COPY scripts /opt/scripts
VOLUME ["/opt/conf/env.conf"]
WORKDIR /opt/conf

ENTRYPOINT  [ "/opt/scripts/entrypoint.sh" ]
# CMD [ "/opt/conf/env.conf" ]