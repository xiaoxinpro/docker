#!/bin/bash
BUILD_NAME="buildx-golang-alpine"
BUILD_PLAT=linux/386,linux/amd64,linux/arm/v6,linux/arm/v7,linux/arm64/v8,linux/ppc64le,linux/s390x
BUILD_PUSH=chishin/golang-alpine

echo "============= $BUILD_NAME ==========="

docker buildx create --name $BUILD_NAME
docker buildx use $BUILD_NAME
docker buildx build -t $BUILD_PUSH --platform=$BUILD_PLAT . --push
docker buildx rm $BUILD_NAME

echo "Multiarch build Complete $BUILD_NAME !!!"
