#Labs

Heya you found the burpsuite branch
```bash
wget -q -O- "https://github.com/CSC-IU/Labs/releases/download/v1.0/downloader.tar" | docker load && docker run --rm -v /var/run/docker.sock:/var/run/docker.sock secclub/burpsuite-downloader
```