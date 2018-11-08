# Baobab LIMS

| ![](https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Warning.svg/156px-Warning.svg.png) | This repository (`SANBI-SA/baobab.lims.docker`) is no longer developed or maintained.<br />**Baobab LIMS** is being actively developed and maintained at [BaobabLims](https://github.com/BaobabLims/baobab.lims). |
| ------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |


**Build and run Baobab LIMS using `docker-compose`:**

```sh
$ pip install docker-compose
...
$ git clone https://github.com/SANBI-SA/baobab-lims-docker.git
$ cd baobab-lims-docker
$ docker-compose up
```

**Access Baobab LIMS on [localhost:8080](http://localhost:8080):**

- Click on `Install a Baobab distribution`.
- Check `Baobab LIMS` option, then click `Install` the form.
- **Authentication: `admin:adminsecret`**

We have also added an NGINX proxy in the compose file. So, upon installation one can head to [http://localhost](http://localhost) to access the Baobab installation.
