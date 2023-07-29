#!/bin/bash
docker buildx build --progress=plain --push --platform linux/386,linux/arm/v8,linux/armhf,linux/amd64 --tag norskfjellgeit/ha-jottacloud:1.0.0 .