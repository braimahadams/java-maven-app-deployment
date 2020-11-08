#!/usr/bin/env groovy

@Library('jenkins-shared-library')
def gv

pipeline {
    agent none
    tools {
        maven 'Maven'
    }
    stages {
        stage("init") {
            steps {
                script {
                    gv = load "script.groovy"
                }
            }
        }
        stage("build jar") {
            steps {
                buildJar()
            }
        }
        stage("build image") {
            steps {
                buildImage()
            }
        }
        stage("deploy") {
            steps {
                script {
                    gv.deployApp()
                }
            }
        }
    }
}
