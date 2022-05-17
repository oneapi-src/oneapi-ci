// SPDX-FileCopyrightText: 2022 Intel Corporation
//
// SPDX-License-Identifier: MIT

def SAMPLES_REPO = "https://github.com/oneapi-src/oneAPI-samples.git"
def SAMPLES_TAG = "2022.2.0"

pipeline {
  agent { docker { image 'intel/oneapi-hpckit' } }
  stages {
    stage('checkout samples') {
      steps {
        dir("oneAPI-samples") {
          checkout scm: [$class: 'GitSCM',
                         userRemoteConfigs: [[url: "${SAMPLES_REPO}"]],
                   branches: [[name: "${SAMPLES_TAG}"]]],
                   poll: false
        }
      }
    }
    stage ('build') {
      parallel {
        stage('build DPC++') {
          steps {
            dir ("oneAPI-samples/DirectProgramming/DPC++/DenseLinearAlgebra/vector-add") {
              sh "make all && make run"
            }
          }
        }
        stage('build C++') {
          steps {
            dir ("oneAPI-samples/DirectProgramming/C++/CompilerInfrastructure/Intrinsics") {
              sh "make && make run && make clean && make CC='icx -msse3' && make run"
            }
          }
        }
        stage('build Fortran') {
          steps {
            dir ("oneAPI-samples/DirectProgramming/Fortran/CombinationalLogic/openmp-primes") {
              sh "make && make run && make clean && make FC=ifx && make run"
            }
          }
        }
      }
    }
  }
}
