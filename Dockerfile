FROM golang:1.21-bookworm
ARG directory=swagger

RUN mkdir swagger

RUN go run github.com/msample/swagger-mixin@latest ${directory}/*.swagger.json > ${directory}/api.json | true