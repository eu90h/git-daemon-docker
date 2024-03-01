This is a simple Dockerfile that launches a git daemon that hosts whatever repository is located at `/srv/git`. By default, a bare repository is created, but this can be changed at runtime by mounting
`/srv/git` to whatever repository you want. The daemon is configured to launch on port 5500, though is easily changed in the Dockerfile.

Example invocation:
```
docker build -t git-daemon-docker .

docker run --name git -d -p 5500:5500 -v ~/my-repo:/srv/git git-daemon-docker 
```
