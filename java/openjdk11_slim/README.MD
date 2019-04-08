# Dockerfile 安装 OpenJDK 11 Slim

自 JDK 11 GA 起，以前提供的 Alpine Linux 版本已被删除。它不是生产版本的，因为它没有经过足够的测试，不能被认为是 GA 版本。

目前，Alpine 唯一稳定的 OpenJDK 版本是 7 和 8。

`openjdk:11-jre-slim` 镜像使用基础镜像是 `debian:sid-slim`

```bash
FROM openjdk:11-jre-slim
```
