FROM --platform=${TARGETPLATFORM} golang:alpine
MAINTAINER chishin <pro@xxgzs.org>

ENV GO111MODULE=on
ENV GOPROXY=https://goproxy.cn

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk add --no-cache git gcc ca-certificates libc-dev

WORKDIR /go

CMD /bin/sh
