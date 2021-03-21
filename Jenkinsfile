#!/usr/bin/env groovy

// Reference the GitLab connection name from your Jenkins Global configuration (https://JENKINS_URL/configure, GitLab section)
properties([gitLabConnection('your-gitlab-connection-name')])

node {
  checkout scm // Jenkins will clone the appropriate git branch, no env vars needed

  // Further build steps happen here
}

pipeline {
    agent any
    stages {
        stage('test') {
            steps {
                script {
                    echo "Testing the application..."
                    echo "Testing webhook..."
                    echo "Testing webhook..."
                }
            }
        }
        stage('build') {
            steps {
                script {
                    echo "Building the application..."
                    echo "Testing webhook..."
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
