FROM ubuntu:16.04
MAINTAINER Dragutin Cirkovic (dragonmen@gmail.com)

# install dependencies
RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		apache2 \
	&& rm -r /var/lib/apt/lists/*

# Default command	
CMD ["apachectl", "-D", "FOREGROUND"]

VOLUME /var/www/html

# Ports
EXPOSE 80