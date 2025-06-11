# Alvin docker client

## Info
* Static files are collected at ***/vol/static*** by default

## Start docker

```
docker run --name alvin-client -e DEBUG=false -e SECRET_KEY=somethingSecret -e ALLOWED_HOSTS=127.0.0.1,localhost -e CSRF_TRUSTED_ORIGINS=http://127.0.0.1:8000,http://localhost:8000,http://localhost:80 -e CORS_ALLOWED_ORIGINS=http://127.0.0.1:8000,http://localhost:8000,http://localhost:80 -e API_HOST=https://cora.alvin-portal.org -p 8000:80 alvin-docker-client:1.0-SNAPSHOT
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
