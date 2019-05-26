# Dockerfile 安装 Zookeeper 单机版

生成镜像

```bash
FROM zookeeper:latest
MAINTAINER LiangGzone "lianggzone@163.com"
```

运行命令

```bash
docker run -p 2181:2181 --name zookeeper_one -d lianggzone/zookeeper_one
```

Docker 会在后台运行一个 Zookeeper 容器, 名字是 zookeeper_one, 并且它默认会暴露 2181 端口。

此时，我们可以通过 `docker logs -f zookeeper_one` 查看 ZK 的运行情况。

同时，我们也可以使用 IDEA 的 `Zookeeper` 插件进行访问。地址：https://plugins.jetbrains.com/plugin/7364-zookeeper
