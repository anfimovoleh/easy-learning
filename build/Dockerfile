# syntax=docker/dockerfile:1
FROM golang:1.19-alpine as build-env
ADD . /src
RUN cd /src
WORKDIR /src
RUN apk add --no-cache make
RUN make go-build

FROM alpine:latest
WORKDIR /app
COPY --from=build-env /src/easy-learning /app/