ARG IMAGE

FROM ${IMAGE}

USER rundeck

COPY --chown=rundeck:root lib docker-lib
RUN chmod +x docker-lib/generate-ssl.sh
RUN ./docker-lib/generate-ssl.sh
