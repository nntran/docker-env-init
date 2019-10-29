FROM alpine
MAINTAINER ntran@ntdt.fr

#USER root
ENV ENV_CONFIG_FILE="/opt/conf/env.conf"

COPY scripts /opt/scripts

VOLUME [${ENV_CONFIG_FILE}]
WORKDIR /opt

ENTRYPOINT  [ "./scripts/entrypoint.sh" ]
# CMD [ "/opt/conf/env.conf" ]