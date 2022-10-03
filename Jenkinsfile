pipeline {
  agent any
  stages {
    stage('Docker Build & Deploy') {
      steps{
         sh """ssh -tt badinenisaivardhan@192.168.0.100 << EOF 
            pwd
            cd Desktop
            rm -rf docker-1
            git clone https://github.com/badinenisaivardhan/docker-1.git
            cd docker-1
            docker build . -t node/web-app
            docker run -d -p 9000:9000 --name nodeapp node/web-app
            exit
            EOF"""
      }
    }
    stage('Testing The Endpoint') {
      steps{
        sh " curl -i localhost:9000"  
      }
    }
  }
}