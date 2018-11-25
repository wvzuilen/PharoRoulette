FROM wvzuilen/pharo-seaside

# Installing PharoRoulette
COPY /src /pharoroulette
RUN ./pharo Pharo.image eval --save "Metacello new baseline:'PharoRoulette'; repository: 'filetree://../pharoroulette'; load."
RUN rm -rf /pharoroulette
