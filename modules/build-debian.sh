#!/usr/bin/env bash

set -e

import com.encodeering.ci.config
import com.encodeering.ci.docker

docker-pull "$REPOSITORY/debian-$ARCH:jessie" "debian:jessie-slim"

docker-patch patch "$PROJECT"

docker-build "$PROJECT/4.0"
