#: title  : moss/xelatex
#: author : "Willian Paixao" <willian@ufpa.br>
#: version: "1.1.0"
FROM ubuntu
MAINTAINER thiagoalmeidasa@gmail.com

LABEL version="1.2.0"

ENV DEBIAN_FRONTEND noninteractive

# Install all TeX and LaTeX dependences
RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
  git \
  ca-certificates \
  inotify-tools \
  lmodern \
  make \
  wget \
  xzdec \
  fontconfig \
  texlive-fonts-recommended \
  texlive-generic-recommended \
  texlive-lang-english \
  texlive-lang-chinese \
  texlive-full && \
  apt-get autoclean && apt-get --purge --yes autoremove && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Export the output data
WORKDIR /data
VOLUME ["/data"]

