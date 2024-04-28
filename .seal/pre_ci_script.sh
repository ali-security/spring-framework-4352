#!/bin/bash
set -ex

git clone --depth 1 --branch v0.0.9 git@github.com:spring-attic/propdeps-plugin.git /tmp/propdeps-plugin
cd /tmp/propdeps-plugin
./gradlew install
