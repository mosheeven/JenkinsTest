
node('slave1'){
    stage('deploy'){
        sh'docker run -t -d --rm training/webapp:latest'
    }
    
}
