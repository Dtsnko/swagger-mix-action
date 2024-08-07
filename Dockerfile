FROM golang:1.21-bookworm
ARG directory=swagger

RUN go run github.com/msample/swagger-mixin@latest ./${directory}/*.swagger  >> $GITHUB_OUTPUT