# Dockerfile 安装 OpenJDK 8 Alpine

Alpine Linux 是一个基于 musl libc 和 BusyBox 的简化 Linux 发行版。 Docker Hub 包含一个基于 Alpine 的 OpenJDK，可以下载为 `openjdk:alpine`。

同样，`openjdk:8-jre` 为 309MB，`openjdk:8-jre-alpine` 为 107.8 MB。

```bash
FROM openjdk:8-jre-alpine
```

注意的是，Alpine Linux 镜像不包含 bash, 替代的，我们可以使用 `/bin/ash` , `/bin/sh` , `ash` `sh`。

```
docker run -it --rm alpine /bin/ash
docker run -it --rm alpine /bin/sh
docker run -it --rm alpine ash
docker run -it --rm alpine sh
```

那么，运行容器命令如下。

```
docker run --name openjdk8 -it lianggzone/openjdk8-alpine /bin/sh
```