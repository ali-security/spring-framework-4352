#!/bin/bash
set -ex

git clone --depth 1 --branch v0.0.9 https://github.com/spring-attic/propdeps-plugin.git /tmp/propdeps-plugin
cd /tmp/propdeps-plugin
./gradlew install

git clone --depth=1 --branch netty-4.1.31.Final https://github.com/netty/netty.git /tmp/netty
cd /tmp/netty
./mvnw install -DskipTests --pl bom

git clone --depth=1 --branch jetty-9.4.14.v20181114 https://github.com/jetty/jetty.project.git /tmp/jetty
cd /tmp/jetty
./mvnw install -DskipTests
