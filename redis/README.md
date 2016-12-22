###<center> Redis Docker-image

## pull

```
$:docker pull redis:3.2.6-alpine
```

### run

```
$:docker run -d --name redis-app -p 6379:6379 redis:3.2.6-alpine
```

```
$:docker run -it --link redis-app:redis --rm redis:3.2.6-alpine redis-cli -h redis -p 6379
```

### detail

* https://dev.aliyun.com/detail.html?spm=5176.1972343.2.10.iy3cCL&repoId=1259
