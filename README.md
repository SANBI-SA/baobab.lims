# docker-plone-bika.lims
Bika.lims on Docker

## Without nginx proxying

**Build and run `docker-plone-bika.lims` using `docker`:**
```
$ docker build -t thobalose/docker-plone-bikalims .
$ docker run -d -p 8080:8080 --name plone thobalose/docker-plone-bikalims
```

**Access docker-plone-bika.lims at:** 

  * [localhost:8080](http://localhost:8080)

**Add a new Plone site**

  * Select "Add Plone Site", ensure that the Bika LIMS option is checked, then submit the form.

*Start working with Bika LIMS...*

## With nginx proxying


![Proxying](http://docs.plone.org/_images/zope_plus_ws.png "Proxying Plone")



**Build and run `docker-plone-bika.lims` using `docker-compose`:**
```
$ pip install docker-compose
$ docker-compose build 
$ docker-compose up
```

**Access docker-plone-bika.lims at:** 

  * [localhost:8080](http://localhost:8080)

*For now, one has first install bika.lims from `:8080` for NGINX `proxy_pass` to work*
  * see above `Add new Plone site`

**Upon installation, one can access bikalims from [http://localhost](http://localhost)**

*Still to be updated...*
