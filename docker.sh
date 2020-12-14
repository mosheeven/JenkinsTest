
node('slave1'){
    stage('docker-related'){
        withDockerRegistry(credentialsId: '1cb6f268-6712-4a54-b041-7d7989fa1635') {
            customImage.push()
    }
    }
    stage('deploy'){
        sh'docker run -t -d --rm devmozes/flaskweb:1.0'
    }
    
}
