# docker-jenkins-nodejs

docker-jenkins-nodejs

## build

```
docker build -t docker-jenkins-nodejs .
```

## start a container

```
docker run --rm -d -p 8000:8080 -p 50000:50000 docker-jenkins-nodejs
```
