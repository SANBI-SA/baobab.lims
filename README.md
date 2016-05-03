# docker-bika.lims
Bika.lims on Docker

## Without nginx proxying

**Build and run `docker-bika.biobank` using `docker`:**
```
$ docker build -t bika.biobank .
$ docker run -d -p 8080:8080 biobank biobank 
```

**Access docker-plone-bika.lims at:** 
      * Select "Add Plone Site", ensure that one of the options listed is checked, then submit the form.
      * [localhost:8080](http://localhost:8080)

## With nginx proxying


![Proxying](http://docs.plone.org/_images/zope_plus_ws.png "Proxying Plone")



**Build and run `docker-bika.biobank` using `docker-compose`:**
```
$ pip install docker-compose
$ docker-compose build 
$ docker-compose up
```

## NB

 * **Access docker-plone-bika.lims at:** 

      * [localhost:8080](http://localhost:8080)

      **Add a new Plone site**

      * Select "Add Plone Site", ensure that one of the options listed is checked, then submit the form.
      * For now, one has first install bika.lims from `:8080` for NGINX `proxy_pass` to work*

**Upon installation, one can access bikalims from [http://localhost](http://localhost)**

*Still to be updated...*
