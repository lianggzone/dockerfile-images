# Dockerfile 安装 Zookeeper 集群版

运行命令

```bash
COMPOSE_PROJECT_NAME=zk_cluster docker-compose up
```

Docker 会在后台运行一个 Zookeeper 容器, 名字是 zookeeper_one, 并且它默认会暴露 2181 端口。

此时，我们可以通过 `COMPOSE_PROJECT_NAME=zk_cluster docker-compose ps` 查看 ZK 的运行情况。

同时，我们也可以使用 IDEA 的 `Zookeeper` 插件进行访问。地址：https://plugins.jetbrains.com/plugin/7364-zookeeper
