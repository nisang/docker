
pull images:

```
$ docker pull sonatype/nexus3:latest
```

To run, binding the exposed port 8081 to the host.

```
$ docker run -d -p 8081:8081 --name nexus sonatype/nexus3
```

To test:

```
$ curl -u admin:admin123 http://localhost:8081/service/metrics/ping
```

mem-settings:

```
$ docker run -d -p 8081:8081 --name nexus -e JAVA_MAX_MEM=768m sonatype/nexus3
```

data-settings:
```
$ mkdir /some/dir/nexus-data && chown -R 200 /some/dir/nexus-data
$ docker run -d -p 8081:8081 --name nexus -v /some/dir/nexus-data:/nexus-data sonatype/nexus3
```

