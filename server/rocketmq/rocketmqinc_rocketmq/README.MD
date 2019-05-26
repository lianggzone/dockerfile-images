# Dockerfile 安装 RocketMQ

镜像地址

```
https://hub.docker.com/r/rocketmqinc/rocketmq/tags
```

生成镜像

```bash
FROM rocketmqinc/rocketmq:4.4.0
MAINTAINER LiangGzone "lianggzone@163.com"
```

启动 nameserver 命令

```bash
docker run -d -p 9876:9876 -v `pwd`/data/namesrv/logs:/root/logs -v `pwd`/data/namesrv/store:/root/store --name rmqnamesrv lianggzone/rocketmq sh mqnamesrv
```

启动 broker 命令

```bash
docker run -d -p 10911:10911 -p 10909:10909 -v `pwd`/data/broker/logs:/root/logs -v `pwd`/data/broker/store:/root/store --name rmqbroker --link rmqnamesrv:namesrv -e "NAMESRV_ADDR=namesrv:9876" lianggzone/rocketmq sh mqbroker -c ../conf/broker.conf
```

启动 rocketmq-console 命令

```bash
docker run -d -p 8080:8080 --name rmq-ng --link rmqnamesrv:namesrv -e "rocketmq.config.namesrvAddr=namesrv:9876" styletang/rocketmq-console-ng
```

Docker 会在后台运行一个 RocketMQ 容器。
