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
=======
This branch contains sample CI config files for using oneAPI and
containers. See `master branch`_ for samples for other methods.

TravisCI:

.. image:: https://travis-ci.com/rscohn2/oneapi-ci.svg?branch=container
   :target: https://travis-ci.com/rscohn2/oneapi-ci

CircleCI:

.. image:: https://circleci.com/gh/rscohn2/oneapi-ci/tree/container.svg?style=svg
   :target: https://circleci.com/gh/rscohn2/oneapi-ci

GitHub: container exceeds size limit

.. image:: https://github.com/rscohn2/oneapi-ci/workflows/CI/badge.svg?branch=container
   :target: https://github.com/rscohn2/oneapi-ci

GitLab: container exceeds size limit

.. image:: https://gitlab.com/mmzakhar/oneapi-ci/badges/apt/pipeline.svg
=======
.. image:: https://gitlab.com/mmzakhar/oneapi-ci/badges/master/pipeline.svg
   :target: https://gitlab.com/mmzakhar/oneapi-ci/pipelines

.. _`docker containers`: https://software.intel.com/en-us/get-started-with-intel-oneapi-base-linux-using-containers
.. _`apt repos`: https://software.intel.com/en-us/articles/oneapi-repo-instructions
.. _`master branch`: https://github.com/mmzakhar/oneapi-ci/tree/master
.. _`container branch`: https://github.com/mmzakhar/oneapi-ci/tree/container
=======
.. image:: https://gitlab.com/rscohn2/oneapi-ci/badges/container/pipeline.svg
   :target: https://gitlab.com/rscohn2/oneapi-ci

Azure Pipelines: container exceeds size limit

.. image:: https://rscohn2.visualstudio.com/oneapi-ci/_apis/build/status/rscohn2.oneapi-ci?branchName=container
   :target: https://rscohn2.visualstudio.com/oneapi-ci/_build

Appveyor:

.. image:: https://ci.appveyor.com/api/projects/status/i4es5h2ub7blrtcc?svg=true
   :target: https://ci.appveyor.com/project/rscohn2/oneapi-ci

.. _`master branch`: https://github.com/rscohn2/oneapi-ci
