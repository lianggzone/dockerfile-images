# Dockerfile 安装 Kafka

运行命令

```bash
docker-compose build --force-rm --no-cache
```

该命令通常情况下只需要执行一次，但是如果你之前已经 build 过，然后你想重新 build 或者修改了 kafka 的配置之后要重新执行 build，都可以直接使用该命令执行 build.

- 启动服务
```bash
docker-compose up --force-recreate -d
```

- 停止服务
```bash
docker-compose rm -svf
```

- 访问KafkaManager

```
http://localhost:9010
```
