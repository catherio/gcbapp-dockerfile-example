FROM ubuntu:14.04
ENV MINICONDA_URL https://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh
RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*
RUN wget $MINICONDA_URL -O miniconda.sh

ENV feature_enabled false
CMD sh -c 'if [ "$feature_enabled" = true ]; then echo "Feature activated"; else echo "Feature not activated"; fi'
