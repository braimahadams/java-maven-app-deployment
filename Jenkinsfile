#!/usr/bin/env groovy

pipeline {
    agent any
    stages {
        stage('build app') {
            steps {
               script {
                   echo "building the application..."
               }
            }
        }
        stage('build image') {
            steps {
                script {
                    echo "building the docker image..."
                }
            }
        }
        stage('deploy') {
            steps {
                script {
                   echo 'deploying docker image...'
                   withKubeConfig([credentialsId: 'k8s-credentials', serverUrl: 'https://10A6677B7BAA541A0D643A33CD044365.yl4.eu-west-3.eks.amazonaws.com']) {
                       sh 'kubectl create deployment nginx-depl --image=nginx'
                   }
                }
            }
        }
    }
}
