#!/usr/bin/env groovy

pipeline {
    agent any
    stages {
        stage('test') {
            steps {
                script {
                    echo "Testing the application..."
                    echo "Testing webhook..."
                }
            }
        }
        stage('build') {
            steps {
                script {
                    echo "Building the application..."
                    echo "Testing webhook..."
                }
            }
        }
        stage('deploy') {
            steps {
                script {
                    echo "Deploying the application..."
                }
            }
        }
    }
}
