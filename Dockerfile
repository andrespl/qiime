FROM ubuntu:14.04
MAINTAINER Andres PL <suoandres91@gmail.com>

RUN apt-get update && apt-get install -y wget libxtst6 python-qt4 
RUN wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh && bash Miniconda2-latest-Linux-x86_64.sh -b -p ./opt/conda
ENV PATH $PATH:/opt/conda/bin
RUN conda create -n qiime1 python=2.7 qiime matplotlib=1.4.3 mock nose -c bioconda 
COPY /data /opt/data
