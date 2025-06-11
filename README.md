# Alvin docker client

## Info
* The env file contains variables used by the application
* Static files are collected at ***/vol/static*** by default, can possibly be used as a docker volume and used by a static file server (nginx etc) to serve these files

## Start docker with /vol/static as a docker volume

```
docker run --name alvin-client --env-file env -p 8000:80 alvin-docker-client:1.0-SNAPSHOT
```

## Variables used, values are examples
```
DEBUG=false
STATIC_ROOT=/vol/static
ALLOWED_HOSTS=127.0.0.1,localhost
CSRF_TRUSTED_ORIGINS=http://127.0.0.1:8000,http://localhost:8000,http://localhost:80
CORS_ALLOWED_ORIGINS=http://127.0.0.1:8000,http://localhost:8000,http://localhost:80
SECRET_KEY=somesecretkey
API_HOST=https://cora.alvin-portal.org
```
