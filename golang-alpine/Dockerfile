FROM --platform=${TARGETPLATFORM} golang:alpine
MAINTAINER chishin <pro@xxgzs.org>

ENV GO111MODULE=on
ENV GOPROXY=https://goproxy.cn
ENV TZ Asia/Shanghai

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk add --no-cache git gcc ca-certificates libc-dev
RUN apk add tzdata && \
    ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone

WORKDIR /go

CMD /bin/sh
