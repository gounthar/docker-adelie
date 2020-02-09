# docker-adelie
My try at getting an Adélie Linux minimal Docker container. Taken from https://hub.docker.com/r/zvio/adelie

The build has been done on this machine:

```bash
Linux ams1-c1.large.arm-01 4.9.0-4-arm64 #1 SMP Debian 4.9.51-1 (2017-09-28) aarch64 GNU/Linux
```

To build it, just launch `./adelie.sh` and then 

```bash
docker images
```

Note your new IMAGE ID, and then

```bash
docker login --username=yourDockerHubHandle
docker tag yourImageId yourDockerHubHandle/adelie:aarch64
docker push yourDockerHubHandle/adelie:aarch64
```

The image is then available at DockerHub under your Docker Hub Handle. Mine is [there](https://hub.docker.com/r/gounthar/adelie).

