FROM ubuntu:14.04

MAINTAINER Thoba Lose 'thoba@sanbi.ac.za' Hocine Bendou 'hocine@sanbi.ac.za'

# Add plone user
RUN mkdir /usr/local/Plone \
 && useradd plone -d /usr/local/Plone -s /bin/bash \
 && chown -R plone:plone /usr/local/Plone

# Update & Upgrade
RUN apt-get -y update --fix-missing && \
    # install the platform's build kit, nginx, and supervisor:
    apt-get -y upgrade && \

    apt-get -y install build-essential \
                       python-dev \
                       libjpeg-dev \
                       libxslt-dev \
                       supervisor \
                       zlib1g-dev \
                       wget \
                       libssl-dev \
                       gcc git-core libffi-dev libpcre3 libpcre3-dev autoconf libtool pkg-config \
                       libssl-dev libexpat1-dev libxslt1.1 \
                       gnuplot libcairo2 libpango1.0-0 libgdk-pixbuf2.0-0
# Download latest version
RUN wget --no-check-certificate https://launchpad.net/plone/4.3/4.3.7/+download/Plone-4.3.7-r1-UnifiedInstaller.tgz

RUN tar -xf Plone-4.3.7-r1-UnifiedInstaller.tgz && \
    chown -R plone:plone Plone-4.3.7-r1-UnifiedInstaller

RUN su plone -c "cd Plone-4.3.7-r1-UnifiedInstaller; ./install.sh --target=/usr/local/Plone --owner=plone --group=plone --password=bikapwd --build-python zeo"
RUN rm -rf Plone-4.3.7-r1-UnifiedInstaller.tgz \
 && rm -rf Plone-4.3.7-r1-UnifiedInstaller

# Comment the second line if you want to test bika.lims.
#SANBI branch is used by bika.sanbi extension and not work alone!
RUN su plone -c "git clone https://github.com/rockfruit/bika.lims.git /usr/local/Plone/zeocluster/src/bika.lims"
RUN su plone -c "cd /usr/local/Plone/zeocluster/src/bika.lims; git checkout -b SANBI"

COPY buildout.cfg /usr/local/Plone/zeocluster/buildout.cfg

RUN chown -R plone:plone /usr/local/Plone/zeocluster/buildout.cfg

RUN su plone -c "cd /usr/local/Plone/zeocluster; bin/buildout"

# use supervisor to start Plone with the server.
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 8080

CMD ["/usr/bin/supervisord"]

