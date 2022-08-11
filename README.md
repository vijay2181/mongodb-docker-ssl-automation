# mongodb-docker-ssl-automation
MongoDB with self-signed SSL in a docker container. For test purposes only - do not use in production.

## Execution

```
docker build -t mongodb:latest .
```

>by building the image, new certificates will be created 

then run with:

```
docker run -d -p 27017:27017 --name vijay-ssl mongodb:latest
```

```
docker logs -f vijay-ssl
```


## Connection

```
docker exec -it vijay-ssl bash
```
```
mongo --host 127.0.0.1:27017 --ssl --sslCAFile /home/mongodb/ssl/ca.pem --sslPEMKeyFile /home/mongodb/ssl/mongodb.pem -u vijay -p vijay --authenticationDatabase test

```

>show dbs

>show collections
