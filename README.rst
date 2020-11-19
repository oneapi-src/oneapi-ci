.. SPDX-FileCopyrightText: 2020 Intel Corporation
..
.. SPDX-License-Identifier: CC-BY-4.0

============================
Intel\ |r| oneAPI CI Samples
============================

.. image:: https://api.reuse.software/badge/github.com/oneapi-src/oneapi-ci
   :target: https://api.reuse.software/info/github.com/oneapi-src/oneapi-ci
   :alt: REUSE status

This repo contains sample Public/Cloud CI configurations that
demonstrate installing Intel\ |r| oneAPI toolkit components and building
applications:

===============  ===========================================
Compilers        icc, ifort, dpcpp
OS platforms     Linux, Windows, MacOS
Install methods  Intel\ |r| installer, apt, docker container
===============  ===========================================

The config files show examples of all supported configurations. Delete
the ones you do not want.

Status
======

==================  ==================================  ================
CI                  Config                              Status
==================  ==================================  ================
Travis CI           `.travis.yml`_                      |TravisStatus|
Circle CI           `.circleci/config.yml`_             |CircleStatus|
AppVeyor            `.appveyor.yml`_                    |AppVeyorStatus|
GitLab CI           `.gitlab-ci.yml`_                   |GitLabStatus|
GitHub Actions      `.github/workflows/build_all.yml`_  |GitHubStatus|
Azure Pipelines     `.azure-pipelines.yml`_             |AzureStatus|
==================  ==================================  ================


Supported Configurations
========================

======== === ======= ===== === ======= ===== === ======= ===== === =======
CI           Linux APT        Linux Docker        Windows         MacOS
-------- ----------------- ----------------- ----------------- -----------
\        C++ Fortran DPC++ C++ Fortran DPC++ C++ Fortran DPC++ C++ Fortran
======== === ======= ===== === ======= ===== === ======= ===== === =======
Travis   |c|   |c|    |c|  |c|   |c|    |c|  |c|   |c|    |c|  |c|   |c|
Circle   |c|   |c|    |c|  |c|   |c|    |c|  |x|   |x|    |x|  |x|   |x|
AppVeyor |c|   |c|    |c|  |x|   |x|    |x|  |c|   |c|    |c|  |c|   |c|
GitLab   |c|   |c|    |c|  |x|   |x|    |x|  |c|   |c|    |c|  |x|   |x|
GitHub   |c|   |c|    |c|  |c|   |c|    |c|  |c|   |c|    |c|  |c|   |c|
Azure    |c|   |c|    |c|  |c|   |c|    |c|  |c|   |c|    |c|  |c|   |c|
======== === ======= ===== === ======= ===== === ======= ===== === =======


Troubleshooting
===============

Detailed install logs are saved as artefacts in most CI jobs.
Those logs can be helpful in case of installation issues.

License
=======

See licenses_

Contribute
==========

See contributing_.

Security
========

See `security guidelines`_.

.. _licenses: LICENSES
.. _contributing: CONTRIBUTING.rst
.. _`security guidelines`: https://www.intel.com/content/www/us/en/security-center/default.html

.. _`.travis.yml`: .travis.yml
.. _`.circleci/config.yml`: .circleci/config.yml
.. _`.appveyor.yml`: .appveyor.yml
.. _`.gitlab-ci.yml`: .gitlab-ci.yml
.. _`.github/workflows/build_all.yml`: .github/workflows/build_all.yml
.. _`.azure-pipelines.yml`: .azure-pipelines.yml

.. |TravisStatus| image:: https://travis-ci.com/oneapi-src/oneapi-ci.svg?branch=master
   :target: https://travis-ci.com/oneapi-src/oneapi-ci
   :alt: Build status
.. |CircleStatus| image:: https://circleci.com/gh/oneapi-src/oneapi-ci.svg
   :target: https://circleci.com/gh/oneapi-src/oneapi-ci
   :alt: Build status
.. |AppVeyorStatus| image:: https://ci.appveyor.com/api/projects/status/c1lc5jrl6akdb2ey?svg=true
   :target: https://ci.appveyor.com/project/oneapi-ci/oneapi-ci
   :alt: Build status
.. |GitLabStatus| image:: https://gitlab.com/rscohn2/oneapi-ci-mirror/badges/master/pipeline.svg
   :target: https://gitlab.com/rscohn2/oneapi-ci-mirror/-/commits/master
   :alt: Build status
.. |GitHubStatus| image:: https://github.com/oneapi-src/oneapi-ci/workflows/build_all/badge.svg
   :target: https://github.com/oneapi-src/oneapi-ci/actions?query=workflow%3Abuild_all
   :alt: Build status
.. |AzureStatus| image:: https://dev.azure.com/robertscohn/oneapi-ci-mirror/_apis/build/status/oneapi-src.oneapi-ci?branchName=master
   :target: https://dev.azure.com/robertscohn/oneapi-ci-mirror/_build
   :alt: Build status

.. |r| unicode:: U+000AE
.. |c| unicode:: U+2714
.. |x| unicode:: U+2717
