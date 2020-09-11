# oneAPI CI Samples

#### This repo contains sample configurations for 6 Public/Cloud CI system:
1. Travis CI
2. Circle CI
3. AppVeyor
4. GitLab CI
5. GitHub Actions
6. Azure Pipelines

#### Configurations demonstrate
1. Installation of Intel(R) oneAPI tools in CI environment on Windows, Linux, and macOS.
2. Integration of Intel(R) oneAPI Toolkit Containers in the CI systems.
3. Building of Code samples for Intel(R) oneAPI toolkits in 3 different languages: C++, Fortran and DPC++.

> The repo also contains scripts that can be used in CI configurations to collect detailed installation logs in case of any installation issues. Replace calls to "install" scripts with calls to "install_debug" or "install_debug_hang" scripts to use this functionality).

#### Summary of what's included and the status of CI builds is provided in the table below. 

| CI  | CI config | CI status | Windows (C++) | Windows (Fortran) | Windows (DPC++) | Linux (C++), APT | Linux (Fortran), APT | Linux (DPC++), APT | Linux (C++), Container | Linux (Fortran), Container | Linux (DPC++),  Container | macOS (C++) | macOS (Fortran) |
| ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| Travis CI  | [.travis.yml](https://github.com/mmzakhar/oneapi-ci/blob/master/.travis.yml) | [![Alt text](https://travis-ci.com/mmzakhar/oneapi-ci.svg?branch=master)](https://travis-ci.com/mmzakhar/oneapi-ci)|+|+|+|+|+|+|+|+|+|+|+|
| Circle CI  | [.circleci/config.yml](https://github.com/oneapi-src/oneapi-ci/blob/master/.circleci/config.yml) | [![Build status](https://circleci.com/gh/mmzakhar/oneapi-ci.svg?style=svg)](https://circleci.com/gh/mmzakhar/oneapi-ci)|-|-|-|+|+|+|+|+|+|-|-|
| AppVeyor  | [.appveyor.yml](https://github.com/oneapi-src/oneapi-ci/blob/master/.appveyor.yml) | [![Alt text](https://ci.appveyor.com/api/projects/status/y06fiwtls22x7475?svg=true)](https://ci.appveyor.com/project/mmzakhar/oneapi-ci)|+|+|+|+|+|+|-|-|-|+|+|
| GitLab CI  | [.gitlab-ci.yml](https://github.com/mmzakhar/oneapi-ci/blob/master/.gitlab-ci.yml) | [![Alt text](https://gitlab.com/mmzakhar/oneapi-ci/badges/master/pipeline.svg)](https://gitlab.com/mmzakhar/oneapi-ci)|+|+|+|+|+|+|-|-|-|-|-|
| GitHub Actions | [.github/workflows/build_all.yml](https://github.com/mmzakhar/oneapi-ci/blob/master/.github/workflows/build_all.yml) | [![Build status](https://github.com/mmzakhar/oneapi-ci/workflows/build_all/badge.svg)](https://github.com/mmzakhar/oneapi-ci)|+|+|+|+|+|+|+|+|+|+|+|
| Azure Pipelines| [.azure-pipelines.yml](https://github.com/oneapi-src/oneapi-ci/blob/master/.azure-pipelines.yml) | [![Build Status](https://dev.azure.com/robertscohn/oneapi-ci-mirror/_apis/build/status/robertscohn.oneapi-ci-mirror?branchName=master)](https://dev.azure.com/robertscohn/oneapi-ci-mirror/_build)|+|+|+|+|+|+|+|+|+|+|+|
