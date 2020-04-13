# Docker Factorio server
Dockerfile to create a Factorio Server in a container 

Require:
```
- Docker
- Factorio Server binnary
```
Server can be downloaded from (or use the script `build-run.sh`):

https://www.factorio.com/download-headless

# Running the Dockerfile
Command to build to docker container:
```
docker build . -t factorio
```
Command to run the Container: 
```
docker run -d -p 34197:<OWN_CUSTOM_PORT> factorio
```

# build-run.sh
Script to download, build and run Dockerfile with Factorio Server:
```
./build-run.sh <OPTIONAL-SERVER_NAME> <OPTIONAL-CONTAINER_PORT>
```
Default value for `OPTIONAL-SERVER_NAME` is `Factorio_server`

Default value for `OPTIONAL-CONTAINER_PORT` is `34197`


In case the script is not working use the below command:
```
chmod +x build-run.sh
```

# Server Settings
File with properties `server-settings.json` of the Factorio Server change at will :)