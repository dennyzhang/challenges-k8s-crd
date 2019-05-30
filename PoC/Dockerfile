########## How To Use Docker Image ###############
##
##  Build docker image:
##    time docker build --no-cache -f Dockerfile -t denny/crd:base --rm=true .
##  How to use:
##
##################################################

FROM golang:1.12.5

LABEL maintainer="Denny Zhang <https://www.dennyzhang.com>"

ADD pre_install.sh /go/pre_install.sh

RUN apt-get -y update && apt-get install -y apt-transport-https && \
    curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list && \
    apt-get -y update && apt-get install -y kubectl && \
    apt-get install -y vim && \

    # go get dependency
    bash -ex /go/pre_install.sh && \

# Cleanup
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean && \
    apt-get autoremove -y
