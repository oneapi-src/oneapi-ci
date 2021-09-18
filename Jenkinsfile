// SPDX-FileCopyrightText: 2020 Intel Corporation
//
// SPDX-License-Identifier: MIT

def SAMPLES_TAG = "2021.3.0"
pipeline {
    agent { docker { image 'intel/oneapi-hpckit' } }
    stages {
        stage('build') {
            steps {
                sh 'apt install -y git'
                sh 'scripts/build_linux.sh c++ ${SAMPLES_TAG}'
            }
        }
    }
}
