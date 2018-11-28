FROM wvzuilen/pharo-seaside

LABEL maintainer="wvzuilen@gmail.com"
LABEL description="Docker image with PharoRoulette installed and running op port 8088"

ENV PHAROROULETTE_STATIC PharoRoulette

# Installing PharoRoulette
COPY /src /pharo/pharoroulette
COPY /scripts/preload.st /pharo
COPY /scripts/postload.st /pharo
COPY /static /pharo/static/PharoRoulette

RUN ./pharo Pharo.image st preload.st --save --quit
RUN ./pharo Pharo.image st postload.st --save --quit

RUN rm -rf /pharo/pharoroulette

# Starting Pharo after a container is started
CMD ["/pharo/pharo", "Pharo.image","--no-quit"]

# Exposing port 8088
EXPOSE 8088
