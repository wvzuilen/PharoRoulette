FROM wvzuilen/pharo-seaside

LABEL maintainer="wvzuilen@gmail.com"
LABEL description="Docker image with PharoRoulette installed"

# Installing PharoRoulette
COPY /src /pharoroulette
RUN ./pharo Pharo.image eval --save "Metacello new baseline:'PharoRoulette'; repository: 'filetree://../pharoroulette'; load."
RUN rm -rf /pharoroulette
