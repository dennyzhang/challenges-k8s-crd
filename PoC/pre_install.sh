#!/usr/bin/env bash
##  @copyright 2019 DennyZhang.com
## Licensed under MIT 
##   https://www.dennyzhang.com/wp-content/mit_license.txt
##
## File: hello
## Author : Denny <https://www.dennyzhang.com/contact>
## Description :
## --
## Created : <2019-05-30>
## Updated: Time-stamp: <2019-05-30 10:44:28>
##-------------------------------------------------------------------

# go get dependency
go get -u k8s.io/client-go/... && \
go get -u k8s.io/apimachinery/... && \
go get -u k8s.io/apiextensions-apiserver/...
