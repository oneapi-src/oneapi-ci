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
                dir("oneAPI-Samples-checkout")
                {
                    checkout scm: [$class: 'GitSCM',
                                   userRemoteConfigs: [[url: "${SAMPLES_REPO}"]],
                             branches: [[name: "${SAMPLES_TAG}"]]],
                             poll: false
                }
                sh 'cp -rv oneAPI-Samples-checkout oneAPI-Samples'
            }
        }
        stage('build')
        {
            steps
            {
                sh "ls -la oneAPI-samples/DirectProgramming/C++/CompilerInfrastructure/Intrinsics"
                sh "oneAPI-samples/DirectProgramming/C++/CompilerInfrastructure/Intrinsics && make && make run && make clean && make CC='icx -msse3' && make run"
                sh "oneAPI-samples/DirectProgramming/Fortran/CombinationalLogic/openmp-primes && make && make run && make clean && make FC=ifx && make run"
            }
        }
    }
}
