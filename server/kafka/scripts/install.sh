#!/bin/bash

if [ ! -x "${KAFKA_INSTALL_PATH}" ];then
	mkdir -p "${KAFKA_INSTALL_PATH}"
fi

mirror="https://mirrors.aliyun.com/apache"
url="${mirror}/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz"
wget "${url}" -O "/tmp/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz"

tar xzf /tmp/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz -C "${KAFKA_INSTALL_PATH}"
ln -s "${KAFKA_INSTALL_PATH}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}" /opt/kafka
rm /tmp/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz