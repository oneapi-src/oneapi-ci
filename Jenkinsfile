// SPDX-FileCopyrightText: 2020 Intel Corporation
//
// SPDX-License-Identifier: MIT

def SAMPLES_TAG = "2021.3.0"
pipeline {
    agent { docker { image 'intel/oneapi-hpckit' } }
    stages {
        stage('build') {
            steps {
                git url: 'https://github.com/oneapi-src/oneAPI-samples.git' branch: ${SAMPLES_TAG}
                sh 'scripts/build_linux_jenkins.sh c++'
            }
        }
    }
}
