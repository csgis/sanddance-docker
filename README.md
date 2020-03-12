# sanddance-docker

This Dockerfile builds the official Demo app as Container

## Build
```
mkdir /opt/sd; cd /opt/sd
git clone --recursive https://github.com/csgis/sanddance-docker.git .
docker build -t tbook/sanddance-app .
```

## Run it
```
docker run -it -p 8080:80 --rm --name sdapp-1 t-book/sanddance-app:latest
```