FROM golang:1.12-alpine

RUN apk add make npm git \
 && mkdir -p /.cache && chmod 0777 /.cache \
 && mkdir -p /.npm && chmod 0777 /.npm \
 && mkdir -p /.config && chmod 0777 /.config

COPY Makefile /
RUN cd / && make tools && rm /Makefile
