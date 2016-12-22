### mongodb docker-image


### version

* 3.4.1

### pull

* docker pull mongodb:3.4.1

```
$:docker run --name some-mongo -d mongo
```

```
$ docker run --name some-app --link some-mongo:mongo -d application-that-uses-mongo
```
