FROM mysql:8.0.16
COPY ./scripts /docker-entrypoint-initdb.d
