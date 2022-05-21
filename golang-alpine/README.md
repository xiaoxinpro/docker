## golang-alpine

Golang预编译环境，系统为最新版本Alpine，已部署内容如下：

- Alpine 国内阿里云源
- Golang Get 国内源
- Git
- GCC
- ca-certificates
- libc-dev
- TZ=Asia/Shanghai

Golang编译Dockerfile示例：

```bash
FROM --platform=${TARGETPLATFORM} chishin/golang-alpine AS build_base

RUN mkdir -p /go/src/github.com/xiaoxinpro/
RUN cd /go/src/github.com/xiaoxinpro/
RUN git clone https://github.com/xiaoxinpro/WolGoWeb.git

WORKDIR /go/src/github.com/xiaoxinpro/WolGoWeb

RUN go get ./src && go build -ldflags "-w -s" -trimpath -o WolGoWeb ./src
```
