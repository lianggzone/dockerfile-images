# Dockerfile 安装 Oracle Java 

> 方式二：通过下载的安装包的方式进行安装


```bash
FROM centos:7
MAINTAINER LiangGzone "lianggzone@163.com"

ADD jdk-8u202-linux-x64.tar.gz /usr/local/java/
ENV JAVA_HOME /usr/local/java/jdk1.8.0_202
ENV CLASSPATH .:${JAVA_HOME}/lib:${JRE_HOME}/lib
ENV PATH ${JAVA_HOME}/bin:$PATH
```