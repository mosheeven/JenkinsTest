node("linux1"){
        stage("create dockerfile") {
        sh """
            tee Dockerfile <<-'EOF'
              FROM ubuntu:latest
              RUN touch file-01.txt
EOF
        """
    }
    stage('Building image') {
        customImage = docker.build("devmozes/jenkins-test")
        }
    stage('Deploy Image') {
     withDockerRegistry(credentialsId: '1cb6f268-6712-4a54-b041-7d7989fa1635') {
            customImage.push()
    }
    }
    } 
