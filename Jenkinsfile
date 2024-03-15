def gv

pipeline {
    agent any
    tools {
        maven 'maven-3.9.6'
    }

    stages {

        stage('init') {
            steps {
                script {
                    gv = load 'script.groovy'
                }
            }
        }

        stage('Build jar') {
            steps {
                script {
                    gv.buildJar()
                }
            }
        }
        
        stage('Build docker image') {
            steps {
                script {
                    gv.buildAndPushDockerImage()
                }
            }
        }
        
        stage('Deploy') {
            steps {
                script {
                    gv.deployApp()
                }
            }
        }
    }
}
