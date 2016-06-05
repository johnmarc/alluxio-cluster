### ALLUXIO ON DOCKER

This is a **working** multi-node docker image that lets you run Alluxio (ex-Tachyon)

https://hub.docker.com/r/ajmssc/alluxio-cluster/

The docker-compose.yml assumes DOCKER_HOST=192.168.99.100. Change to your docker host ip or use something with better networking like docker-swarm or mesos


Admin UI is at http://192.168.99.100:19999/home


Build and run
```bash
docker-compose kill && \
    docker-compose rm --force && \ 
    docker-compose build && \
    docker-compose up -d
```

SH to master
```bash
docker exec -ti alluxiocluster_alluxio-master_1 bash
```

FS operations from command line (Requires alluxio client)
```bash
EXPORT ALLUXIO_MASTER_ADDRESS=192.168.99.100

./alluxio-1.0.0/bin/alluxio fs ls /
./alluxio-1.0.0/bin/alluxio fs copyFromLocal pom.xml /
```



Scale up - BROKEN because docker-compose does not support dynamic port assignment
```bash
docker-compose scale alluxio-slave=3
```

