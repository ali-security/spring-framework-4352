#!/bin/bash
set -ex

git clone --depth 1 --branch v0.0.9 https://github.com/spring-attic/propdeps-plugin.git /tmp/propdeps-plugin
cd /tmp/propdeps-plugin
./gradlew install

git clone --depth=1 --branch netty-4.1.31.Final https://github.com/netty/netty.git /tmp/netty
cd /tmp/netty/bom
../mvnw install
