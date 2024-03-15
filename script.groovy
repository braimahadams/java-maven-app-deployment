def buildJar {} (
    echo "building the application..."      
    sh 'mvn package'
)

def buildAndPushDockerImage {} (
    echo "building the docker image..."    
    withCredentials ([usernamePassword(credentialsId: 'docker-hub-repo', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
        sh "docker build -t braimahadams/java-maven-app:jma-3.0 ."
        sh "echo ${PASSWORD} | docker login -u ${USERNAME} --password-stdin"
        sh "docker push braimahadams/java-maven-app:jma-3.0 "
)

def deployApp {} (
     echo "deploying the application..."    
)

return this