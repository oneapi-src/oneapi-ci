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
Install methods  Intel\ |r| installer, apt, dnf, docker container
===============  ===========================================

The config files show examples of all supported configurations. Delete
the ones you do not want.

For a complete list of components available for installation, 
see |ListComponentsStatus|.

Status
======

==================  ==================================  ================
CI                  Config                              Status
==================  ==================================  ================
GitHub Actions      `.github/workflows/build_all.yml`_  |GitHubStatus|
Circle CI           `.circleci/config.yml`_             |CircleStatus|
AppVeyor            `.appveyor.yml`_                    |AppVeyorStatus|
GitLab CI           `.gitlab-ci.yml`_                   |GitLabStatus|
Azure Pipelines     `.azure-pipelines.yml`_             |AzureStatus|
==================  ==================================  ================


Supported Configurations
========================

======== =========== =========== ============ =========== ===========
\            C++/Fortran/DPC++                            C++/Fortran
-------- ------------------------------------------------ -----------
CI       Linux APT   Linux DNF   Linux Docker Windows     MacOS
======== =========== =========== ============ =========== ===========
GitHub   |c|/|c|/|c| |c|/|c|/|c| |c|/|c|/|c|  |c|/|c|/|c| |c|/|c|
Circle   |c|/|c|/|c| |x|/|x|/|x| |c|/|c|/|c|  |c|/|c|/|c| |x|/|x|
AppVeyor |c|/|c|/|c| |x|/|x|/|x| |x|/|x|/|x|  |c|/|c|/|c| |c|/|c|
GitLab   |c|/|c|/|c| |x|/|x|/|x| |x|/|x|/|x|  |c|/|c|/|c| |x|/|x|
Azure    |c|/|c|/|c| |x|/|x|/|x| |c|/|c|/|c|  |c|/|c|/|c| |c|/|c|
======== =========== =========== ============ =========== ===========


Troubleshooting
===============

The repo contains scripts that can be used in CI configurations to
collect detailed installation logs in case of installation
issues. Replace calls to "install" scripts with calls to
"install_debug" or "install_debug_hang" scripts to use this
functionality.

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

.. |GitHubStatus| image:: https://github.com/mmzakhar/oneapi-ci/workflows/build_all/badge.svg
   :target: https://github.com/mmzakhar/oneapi-ci/actions?query=workflow%3Abuild_all
   :alt: Build status
.. |CircleStatus| image:: https://circleci.com/gh/oneapi-src/oneapi-ci.svg
   :target: https://circleci.com/gh/oneapi-src/oneapi-ci
   :alt: Build status
.. |AppVeyorStatus| image:: https://ci.appveyor.com/api/projects/status/y06fiwtls22x7475?svg=true
   :target: https://ci.appveyor.com/project/mmzakhar/oneapi-ci
   :alt: Build status
.. |GitLabStatus| image:: https://gitlab.com/mmzakhar/oneapi-ci/badges/master/pipeline.svg
   :target: https://gitlab.com/mmzakhar/oneapi-ci/-/commits/master
   :alt: Build status
.. |AzureStatus| image:: https://dev.azure.com/maximmzakharov/oneapi-ci/_apis/build/status/mmzakhar.oneapi-ci?branchName=master
   :target: https://dev.azure.com/maximmzakharov/oneapi-ci/_build
   :alt: Build status
.. |ListComponentsStatus| image:: https://github.com/mmzakhar/oneapi-ci/workflows/list_components/badge.svg
   :target: https://github.com/mmzakhar/oneapi-ci/actions?query=workflow%3Alist_components
   :alt: Build status
   
.. |r| unicode:: U+000AE
.. |c| unicode:: U+2714
.. |x| unicode:: U+2717
