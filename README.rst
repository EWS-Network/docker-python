==============
docker-python
==============

This repository is used to build Docker images from Amazon Linux 2 and install python run time.
The images are build for multiple architecture automatically.

Refer to `AWS Public ECR repository`_ to find all the published images to date.

.. _AWS Public ECR Repository: https://gallery.ecr.aws/i9v7p2w3/python



Implementation
===============

The build is done automatically using AWS CodeBuild with Batch to build the images for multi-version and multi-arch and define manifests based
on the python version bundled in the images.

