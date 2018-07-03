FROM continuumio/miniconda3

###############################################
#
# docker build -t vanessa/cowthink .
# docker run vanessa/cowthink
#
###############################################

ENV DEBIAN_FRONTEND noninteractive

# Dependencies
RUN apt-get update && apt-get install -y wget \
                                         unzip \
                                         apt-utils \
                                         python \
                                         cowsay \
                                         figlet \
                                         fortune


# Build Arguments
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION


ENV PATH /usr/games:$PATH  
LABEL THECOWSAYS MOO
ENTRYPOINT ["cowthink"]
