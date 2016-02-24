# docker-plone-bika.lims
Bika.lims on Docker

**Build and run `docker-plone-bika.lims` using `docker`:**
```
$ docker build -t thobalose/docker-plone-bikalims .
$ docker run -d -p 8080:8080 --name plone thobalose/docker-plone-bikalims
```

**or**

**Build and run `docker-plone-bika.lims` using `docker-compose`:**
```
$ sudo pip install docker-compose
$ docker-compose up
```

**Access docker-plone-bika.lims at:** 

  * [localhost:8080](http://localhost:8080)

*For now one has first install bika.lims from `:8080` for NGINX `proxy_pass` to work*

**Upon installation, one can access bikalims from [http://localhost](http://localhost)**

*Still to be updated...*
