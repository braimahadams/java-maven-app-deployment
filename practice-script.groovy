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


return this

