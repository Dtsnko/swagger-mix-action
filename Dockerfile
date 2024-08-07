FROM golang:1.21-bookworm
ARG directory=swagger

RUN ls -a

RUN go run github.com/msample/swagger-mixin@latest ${directory}/*.swagger.json > ${directory}/api.json