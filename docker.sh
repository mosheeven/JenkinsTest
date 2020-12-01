
node('slave1'){
    stage('deploy'){
        sh'docker run -t -d --rm --name webapp training/webapp:latest'
    }
    
}
