# Labs

Heya you found the burpsuite branch

To start the container:

```bash
docker network create -d bridge csc-network
docker run --rm --name csc-burpsuite -d -e PUID=1000 -e PGID=1000 -p 3000:3000 --network csc-network ghcr.io/csc-iu/labs/burpsuite
docker run --rm -d --network csc-network --name juice-shop bkimminich/juice-shop
```

[Click Me once you have run the command!](http://127.0.0.1:3000)


When you are done:

```bash
docker rm -f csc-burpsuite
docker rm -f juice-shop
docker system prune -a
```
