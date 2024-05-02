#!/bin/bash
set -ex

git clone --depth 1 --branch v0.0.9 https://github.com/spring-attic/propdeps-plugin.git /tmp/propdeps-plugin
cd /tmp/propdeps-plugin
./gradlew install -x test
