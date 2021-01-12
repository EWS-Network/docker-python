ARG ARCH=
ARG BASE_IMAGE=public.ecr.aws/amazonlinux/amazonlinux:2.0.20201218.1${ARCH}
FROM $BASE_IMAGE
RUN yum upgrade -y; yum install python3 -y; curl https://bootstrap.pypa.io/get-pip.py | python3 ;\
    yum clean all; rm -rfv /var/cache/yum ; unlink /usr/bin/python; ln -s /usr/bin/python3 /usr/bin/python

MAINTAINER john@composex.io
LABEL runtime=python
