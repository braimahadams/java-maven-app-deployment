pipeline {
    agent any
    tools {
        maven 'maven-3.9.6'
    }

    stages {
        stage('Build jar') {
            steps {
                script {
                    echo "building the application..."      
                    sh 'mvn package'
                }
            }
        }
        
        stage('Build docker image') {
            steps {
                script {
                    echo "building the docker image..."    
                    withCredentials ([usernamePassword(credentialsId: 'docker-hub-repo', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                        sh "docker build -t braimahadams/java-maven-app:jma-2.0 ."
                        sh "scho ${PASSWORD} | docker login -u ${USERNAME} --password-stdin"
                        sh "docker push braimahadams/java-maven-app:jma-2.0"
                    }
                }
            }
        }
        
        stage('Deploy') {
            steps {
                script {
                    echo "deploying the application..."    
                    // Add your deployment steps here
                }
            }
        }
    }
}
