# docker-plone-bika.lims
Bika.lims on Docker

## Building container
```
$ docker build -t thobalose/docker-plone-bikalims .
```

## Running container
```
$ docker run -d -p 8080:8080 --name plone thobalose/docker-plone-bikalims
```

#OR

**Build and run `dockerjbrowse` using `docker-compose`:**
```
$ sudo pip install docker-compose
$ docker-compose up
```

**Access docker-plone-bika.lims at:** 

  * [localhost:8080](http://localhost:8080)

**Still to be updated...**
