FROM ubuntu:latest
LABEL authors="amank"

ENTRYPOINT ["top", "-b"]