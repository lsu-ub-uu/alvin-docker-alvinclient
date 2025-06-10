# Alvin docker client

## Info
* The env file contains variables used by the application
* Static files are collected at ***/vol/static*** by default, can possibly be used as a docker volume and used by a static file server (nginx etc) to serve these files

## Start docker with /vol/static as a docker volume

```
docker run --name alvin-client -v static-vol:/vol/static --env-file env -p 8000:8000 alvin-docker-client:1.0-SNAPSHOT
```
