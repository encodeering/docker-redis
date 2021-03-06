#!/usr/bin/env bash

set -e

import com.encodeering.ci.config
import com.encodeering.ci.docker

./build-${BASE}.sh

docker-verify redis-server -v | dup | contains "v=${VERSION}"
