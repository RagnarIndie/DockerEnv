#!/usr/bin/env bash
docker images | awk '{print $1"\t"$2"\t"$7" "$8}'