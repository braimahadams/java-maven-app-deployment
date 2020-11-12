pipeline {
    agent none
    stages {
        stage('test') {
            steps {
                script {
                    echo "Testing the application..."
                    echo "Testing change"
                }
            }
        }
        stage('build') {
            steps {
                script {   
                    echo "Building the application..."   
                    echo "some changes to trigger build"    
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
