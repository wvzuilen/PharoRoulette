FROM wvzuilen/pharo-seaside

LABEL maintainer="wvzuilen@gmail.com"
LABEL description="Docker image with PharoRoulette installed and running op port 8088"

# Installing PharoRoulette
COPY /src /pharo/pharoroulette
# RUN ./pharo Pharo.image eval --save "Metacello new baseline:'PharoRoulette'; repository: 'filetree://pharoroulette'; load."
# RUN ./pharo Pharo.image config --save filetree://pharoroulette BaselineOfPharoRoulette

COPY preload.st /pharo
RUN ./pharo Pharo.image st preload.st --save --quit
# RUN ./pharo Pharo.image st postload.st --quit

RUN rm -rf /pharo/pharoroulette

# Starting Pharo after a container is started
CMD ["/pharo/pharo", "Pharo.image","--no-quit"]

# Exposing port 8088
EXPOSE 8088
