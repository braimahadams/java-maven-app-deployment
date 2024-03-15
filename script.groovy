#!/usr/bin/env groovy

def buildApp() {
    echo 'building the app'
}

def testApp() {
     echo 'testing the app'
}

def deployApp() {
    echo 'deploying the app'
    echo "deploying version ${params.VERSION} of the app"
}

def message() {
    input {
        message "select environment to deploy to"
        ok "Deploy"
        parameters {
            choice(name: 'ENVIRONMENT', choices: ['Development', 'Staging', 'Production'], description: 'Select the environment')
        }
    }
    echo "Greeting: ${params.GREETING}"
    echo ${params.ENVIRONMENT}
}

return this

