FROM wvzuilen/pharo-seaside

LABEL maintainer="wvzuilen@gmail.com"
LABEL description="Docker image with PharoRoulette installed and running op port 8088"

# Copy and install Smalltalk code
COPY /src /pharo/pharoroulette
COPY /resources/preload.st /pharo
COPY /resources/postload.st /pharo
WORKDIR /pharo
RUN ./pharo Pharo.image st preload.st --save --quit
RUN ./pharo Pharo.image st postload.st --save --quit

RUN rm -rf /pharo/pharoroulette

# Install and config NGINX
RUN apt install nginx --yes
COPY ./resources/nginx.conf /etc/nginx

# Copy static files used by the Very Nice Demo
COPY /static /pharo/static

# Copy container start script
COPY /resources/start.sh /pharo
RUN chmod +x /pharo/start.sh
CMD ["/pharo/start.sh"]

# Expose port 8081
EXPOSE 8081
