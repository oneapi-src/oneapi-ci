// SPDX-FileCopyrightText: 2020 Intel Corporation
//
// SPDX-License-Identifier: MIT

def SAMPLES_REPO = "https://github.com/oneapi-src/oneAPI-samples.git"
def SAMPLES_TAG = "2021.3.0"

pipeline {
    agent { docker { image 'intel/oneapi-hpckit' } }
    stages {
        stage('checkout samples')
        {
            steps
            {
                dir("oneAPI-Samples")
                {
                    checkout scm: [$class: 'GitSCM',
                                   userRemoteConfigs: [[url: "${SAMPLES_REPO}"]],
                                   branches: [[name: "${SAMPLES_TAG}"]]],
                                   poll: false
                }
            }
        }
        stage('build')
        {
            steps
            {
                sh "pwd"
                sh "find ."
                dir("oneAPI-samples/DirectProgramming/Fortran/CombinationalLogic/openmp-primes")
                {
                    sh "pwd"
                    sh "find ."
                    sh "make && make run && make clean && make FC=ifx && make run"
                }
                dir("oneAPI-samples/DirectProgramming/C++/CompilerInfrastructure/Intrinsics")
                {
                    sh "pwd"
                    sh "find ."
                    sh "make && make run && make clean && make CC='icx -msse3' && make run"
                }

            }
        }
    }
}
