# Dockerfile 安装 Kafka

> http://wurstmeister.github.io/kafka-docker/
> 
> https://www.cnblogs.com/snow-backup/p/12750602.html

Start a cluster:

```bash
docker-compose up -d
```

Add more brokers:

```bash
docker-compose scale kafka=3
```

Destroy a cluster:

```
docker-compose stop
```
