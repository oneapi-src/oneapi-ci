.. SPDX-FileCopyrightText: 2020 Intel Corporation
..
.. SPDX-License-Identifier: CC-BY-4.0

=================================
Intel\ :sup:`®` oneAPI CI Samples
=================================

.. image:: https://api.reuse.software/badge/github.com/oneapi-src/oneapi-ci
   :target: https://api.reuse.software/info/github.com/oneapi-src/oneapi-ci
   :alt: REUSE status

This repository contains sample Public/Cloud CI configurations that
demonstrate installing Intel\ :sup:`®` oneAPI toolkit components and
building applications. You may also find this repository useful for
automating the install process on your own systems. The following
configurations are supported:

===============  ===========================================
Compilers        icc, icx, icpx, dpcpp, ifort, ifx
OS platforms     Linux, Windows, MacOS
Install methods  Intel installer, apt, dnf, docker container, CI cache
===============  ===========================================

The config files are intended to be samples that demonstrate a wide
variety of use cases. For your own use, select the parts that you
need. You may also want to customize the set of compilers and
libraries that are installed. See `component listings`_ for the
component names to use in the scripts.


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

======== ========= ========= ============ ===== ======= ===========
\        C++/Fortran/DPC++                              C++/Fortran
-------- ---------------------------------------------- -----------
CI       Linux APT Linux DNF Linux Docker Linux Windows MacOS
======== ========= ========= ============ ===== ======= ===========
GitHub   |c|       |c|       |c|          |c|   |c|     |c|
Circle   |c|       |c|       |c|          |c|   |x|     |x|
AppVeyor |c|       |x|       |x|          |c|   |c|     |c|
GitLab   |c|       |c|       |x|          |c|   |x|     |x|
Azure    |c|       |c|       |c|          |c|   |c|     |c|
Jenkins  |x|       |x|       |c|          |x|   |x|     |x|
======== ========= ========= ============ ===== ======= ===========


Caching
=======

Some of the oneAPI components are large and can take a few minutes to
download install. To accelerate install, we demonstrate the use of
caching.


Using oneAPI in Jenkins pipelines
=================================

There are multiple ways to add oneAPI tools to a Jenkins pipeline:

#. setup the tools on Jenkins agent directly, or create custom
   container with the tools you need

    * refer to `Intel® oneAPI Toolkits Installation Guides`_ for
      details
    * explore installation scripts in this repo for examples
#. use optimized containers from `Intel oneContainer Portal`_

The Jenkinsfile in this repo demonstrates building DPC++, C++ and
Fortran samples in intel/oneapi-hpckit container in Jenkins.

To give it a try:

#. Follow `Jenkins Install Guide`_ to setup Jenkins, or use your
   existing setup.
#. Install Docker and Docker Pipeline plugins.
#. Create new pipeline for this repository using
   New Item -> Pipeline.
#. Build the pipeline.
#. The result will look like this in Blue Ocean.

|Jenkins Pipeline Example|


See also
========

`Enabling Performance Profiling in GitLab* CI`_

Troubleshooting
===============

Detailed install logs are saved as artifacts in most CI jobs.
Those logs can be helpful in case of installation issues.

License
=======

The contents of this repository follows the SPDX_ standard for
documenting license information. The Intel oneAPI compilers and
libraries are distributed separately. They are free to use and are
governed by the `oneAPI EULA`_.

Contribute
==========

See contributing_.

Security
========

See `security guidelines`_.

.. _`component listings`: https://oneapi-src.github.io/oneapi-ci/
.. _SPDX: https://spdx.dev/
.. _`oneAPI EULA`: https://software.intel.com/content/www/us/en/develop/articles/end-user-license-agreement.html
.. _licenses: LICENSES
.. _contributing: CONTRIBUTING.rst
.. _`security guidelines`: https://www.intel.com/content/www/us/en/security-center/default.html
.. _`Enabling Performance Profiling in GitLab* CI`: https://software.intel.com/content/www/us/en/develop/documentation/vtune-cookbook/top/configuration-recipes/performance-profiling-in-gitlab-ci.html
.. _`Intel® oneAPI Toolkits Installation Guides`: https://software.intel.com/content/www/us/en/develop/articles/installation-guide-for-intel-oneapi-toolkits.html
.. _`Jenkins Install Guide`: https://www.jenkins.io/doc/book/installing/
.. _`Intel oneContainer Portal`: https://software.intel.com/content/www/us/en/develop/tools/containers/get-started.html

.. _`.github/workflows/build_all.yml`: .github/workflows/build_all.yml
.. _`.circleci/config.yml`: .circleci/config.yml
.. _`.appveyor.yml`: .appveyor.yml
.. _`.gitlab-ci.yml`: .gitlab-ci.yml
.. _`.azure-pipelines.yml`: .azure-pipelines.yml

.. |GitHubStatus| image:: https://github.com/oneapi-src/oneapi-ci/workflows/build_all/badge.svg
   :target: https://github.com/oneapi-src/oneapi-ci/actions?query=workflow%3Abuild_all
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
.. |AzureStatus| image:: https://dev.azure.com/robertscohn/oneapi-ci-mirror/_apis/build/status/oneapi-src.oneapi-ci?branchName=master
   :target: https://dev.azure.com/robertscohn/oneapi-ci-mirror/_build
   :alt: Build status
.. |ListComponentsStatus| image:: https://github.com/oneapi-src/oneapi-ci/workflows/list_components/badge.svg
   :target: https://github.com/oneapi-src/oneapi-ci/actions?query=workflow%3Alist_components
   :alt: Build status
.. |Jenkins Pipeline Example| image:: img/jenkins_pipeline_example.png
   :alt: Jenkins Pipeline Example

.. |r| unicode:: U+000AE
.. |c| unicode:: U+2714
.. |x| unicode:: U+2717
