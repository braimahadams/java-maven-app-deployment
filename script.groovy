#!/usr/bin/env groovy

dev buildApp() {
    echo 'building the app'
}

dev testApp() {
     echo 'testing the app'
}

dev deployApp() {
    echo 'deploying the app'
    echo "deploying version ${params.VERSION} of the app"
}

return this

