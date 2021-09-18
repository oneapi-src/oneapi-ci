// SPDX-FileCopyrightText: 2020 Intel Corporation
//
// SPDX-License-Identifier: MIT

def SAMPLES_REPO = "https://github.com/oneapi-src/oneAPI-samples.git"
def SAMPLES_TAG = "2021.3.0"

pipeline {
    agent { docker { image 'intel/oneapi-hpckit' } }
    stages {
        stage('checkout Samples')
        {
            steps
            {
                checkout scm: [$class: 'GitSCM',
                               userRemoteConfigs: [[url: "${SAMPLES_REPO}"]],
                               branches: [[name: "${SAMPLES_TAG}"]]],
                               poll: false
            }
        }
        stage('build')
        {
            steps
            {
                sh 'cd ..'
                sh 'find .'
                sh 'scripts/build_linux_jenkins.sh c++'
                sh 'scripts/build_linux_jenkins.sh fortran'
            }
        }
    }
}
