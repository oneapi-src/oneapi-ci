===================
 oneAPI CI Samples
===================

This repo has samples of CI scripts using oneAPI. We tried 2 different
methods: Intel's `docker containers`_ (see `container branch`_) and
`apt repos`_ (see `master branch`_).

Apt install works the same on most CI systems, so we only show a
GitLab example. For containers, we show examples for many of the
popular public CI systems.

Using containers can be as simple as changing the docker image name in
your config file. Downloading a container is usually faster than
installing a lot of software. However, the container is large because
it has many components in it. The large container will take time to
download and may be too big to fit on the limited size disks that CI
systems provide. Intel's container may not have all the software that
you need, and then you will also have to install software on top.

The apt method looks a little more complicated than containers, but it
only requires you to copy the example and adjust the set of packages
that are installed. You only install the software you need so you are
less likely to run into disk capacity issues. If you want to support
multiple CI systems, you can put the apt install in a script and call
that same script from all your CI config files.

I recommend starting with the apt method. If you have a lot of
software to install, then you are best off creating your own container
with exactly the software you need.


| CI  | CI config | CI status | Windows (C++) | Windows (DPC++) | Linux (C++), APT | Linux (DPC++), APT | Linux (C++), Container | Linux (DPC++),  Container | macOS (C++) |
| ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| Travis CI  | [.travis.yaml](https://github.com/mmzakhar/oneapi-ci/blob/master/.travis.yml) | [![Alt text](https://travis-ci.com/mmzakhar/oneapi-ci.svg?branch=master)](https://travis-ci.com/mmzakhar/oneapi-ci)|*|*|*|*|*|*|*|
