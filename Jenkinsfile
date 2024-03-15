def gv

pipeline {
    agent any
    parameters {
        choice(name: 'VERSION', choices: ['1.0', '2.0', '3.0'], description: 'Which version would you like to build?')
        booleanParam(name: 'executeTests', defaultValue: true, description: 'Should we execute the tests?')
        string(name: 'GREETING', defaultValue: 'Hello', description: 'How should I greet the world?')
    }
    
    stages {
        stage('init') {
            steps {
                script {
                    gv = load 'script.groovy'
                }
            }
        }
        
        stage('build') {
            steps {
                script {
                    gv.buildApp()
                }
            }
        }

        stage('test') {
            when {
                expression { params.executeTests }
            }
            steps {
                script {
                    gv.testApp()
                }
            }
        }
        
        stage('deploy') {
            input {
                message 'Select environment to deploy to:'
                ok 'Done'
                parameters {
                    choice(name: 'ENV', choices: ['DEV', 'STAGING', 'PROD'], description: '')
                    choice(name: 'ENV', choices: ['DEV', 'STAGING', 'PROD'], description: '')
                }
            steps {
                script {
                    gv.deployApp()
                    echo "Deploying to ${params.ENV}"
                    echo "Deploying to ${params.ENV}"
                }
            }
        }
    }
}
}