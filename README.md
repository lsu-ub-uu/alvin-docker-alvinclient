# Alvin docker client

## Info
* Static files are collected at ***/vol/static*** by default
* Secret key
  * The secret key is crucial and handles things such as session signing, CSRF token signing, custom/third-party cryptographic signing etc.
  * To generate a secret key (*the recommended way*) you can run the following command:
    * ```python -c "from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())"```


## Start docker

```
docker run --name alvin-client -e DEBUG=false -e SECRET_KEY=somegeneratedsecretkey -e ALLOWED_HOSTS=127.0.0.1,localhost,172.17.0.2 -e CSRF_TRUSTED_ORIGINS=http://localhost:8000,http://localhost:80 -e CORS_ALLOWED_ORIGINS=http://localhost:8000,http://localhost:80 -e API_HOST=https://cora.alvin-portal.org -p 8000:80 alvin-docker-client:1.0-SNAPSHOT
```

## Variables used, values are examples
```
DEBUG=false
STATIC_ROOT=/vol/static # This is the default already used by the client, but can be changed if needed.
ALLOWED_HOSTS=127.0.0.1,localhost,172.17.0.2
CSRF_TRUSTED_ORIGINS=http://127.0.0.1:8000,http://localhost:8000,http://localhost:80
CORS_ALLOWED_ORIGINS=http://127.0.0.1:8000,http://localhost:8000,http://localhost:80
SECRET_KEY=somegeneratedsecretkey
API_HOST=https://cora.alvin-portal.org
```
