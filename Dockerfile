FROM grafana/tempo:2.10.0

USER root

COPY ./tempo.yaml /etc/tempo.yaml
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 3200 4317 4318

ENTRYPOINT ["/entrypoint.sh"]
