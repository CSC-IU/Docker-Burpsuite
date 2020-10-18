# Labs

Heya you found the burpsuite branch

```bash
wget -q -O- "https://github.com/CSC-IU/Labs/releases/download/v1.0/downloader.tar" | docker load && docker run --rm -v /var/run/docker.sock:/var/run/docker.sock secclub/burpsuite-downloader
```

or

```bash
docker run --rm -d -e PUID=1000 -e PGID=1000 -p 3000:3000 ghcr.io/csc-iu/labs/burpsuite:burpsuite
```

Download image should be named

```
secclub/burpsuite-desktop
```
