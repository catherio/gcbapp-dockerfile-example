FROM ubuntu:14.04
ENV PYTHON_VERSION 2.7 
RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*
RUN /bin/bash -c 'if [ "$PYTHON_VERSION" = 2.7 ]; then wget https://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh -O miniconda.sh; else wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh; fi'
