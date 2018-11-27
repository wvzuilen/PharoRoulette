FROM wvzuilen/pharo-seaside

LABEL maintainer="wvzuilen@gmail.com"
LABEL description="Docker image with PharoRoulette installed"

# Installing PharoRoulette
COPY /src /pharoroulette
# RUN ./pharo Pharo.image eval --save "Metacello new baseline:'PharoRoulette'; repository: 'filetree://../pharoroulette'; load."
RUN ./pharo Pharo.image config --save filetree://../pharoroulette BaselineOfPharoRoulette
RUN rm -rf /pharoroulette

# Starting Pharo after a container is started
CMD ["/pharo/pharo", "Pharo.image","--no-quit"]

# Exposing port 8088
EXPOSE 8088
