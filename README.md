# Labs

Heya you found the burpsuite branch

To start the container:

```bash
docker run --rm --name csc-burpsuite -d -e PUID=1000 -e PGID=1000 -p 3000:3000 ghcr.io/csc-iu/labs/burpsuite
```

[Click Me once you have run the command!](http://127.0.0.1:3000)


When you are done:

```bash
docker rm -f csc-burpsuite
```
