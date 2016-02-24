# Set nginx base image
FROM nginx

# File Author / Maintainer
MAINTAINER Thoba Lose 'thoba@sanbi.ac.za'

# RUN rm /etc/nginx/conf.d/default.conf
# RUN rm /etc/nginx/conf.d/example_ssl.conf

RUN ls /etc/nginx/

RUN cat /etc/nginx/nginx.conf

RUN rm /etc/nginx/nginx.conf


# Copy custom configuration file from the current directory
COPY nginx.conf /etc/nginx/nginx.conf


RUN cat /etc/nginx/nginx.conf

# WORKDIR /etc/nginx/sites-enabled && ln -s /etc/nginx/sites-available/nginx.conf

# RUN rm /etc/nginx/sites-enabled/default

RUN ls /etc/nginx/
