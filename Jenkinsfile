#!/usr/bin/env groovy

// Reference the GitLab connection name from your Jenkins Global configuration (https://JENKINS_URL/configure, GitLab section)

properties([
      gitLabConnection('test-gitlab-hook'),
      pipelineTriggers([
            [
                $class               : 'GitLabPushTrigger',
                triggerOnPush        : true
            ]
      ])
])

node {
    stage('Checkout') {
        checkout scm
    }
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
