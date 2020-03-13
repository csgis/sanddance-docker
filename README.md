# sanddance-docker

This Dockerfile builds a Sanddance-Demo image.

## Build
```
mkdir /opt/sd; cd /opt/sd
git clone --recursive https://github.com/csgis/sanddance-docker.git .
docker build -t tbook/sanddance-app .
```

## Run it
```
docker run -it -p 8080:80 --rm --name sd-app-1 tbook/sanddance-app:latest
```
