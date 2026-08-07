FROM grafana/tempo:2.10.0
USER root
COPY ./tempo.yaml /etc/tempo.yaml
EXPOSE 3200 4317 4318
CMD ["-config.file=/etc/tempo.yaml"]
