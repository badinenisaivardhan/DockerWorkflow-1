pipeline {
  agent any
  stages {
    stage('Docker Build & Deploy') {
      steps{
         sh """ssh -tt badinenisaivardhan@192.168.0.100 << EOF 
            git clone https://github.com/badinenisaivardhan/docker-1.git
            cd docker-1
            docker build -t nodeapp .
            docker run -d -p 3000:3000 --name nodeapp-1 nodeapp
            exit
            EOF"""
      }
    }
    stage('Testing The Endpoint') {
      steps{
        sh " curl -i localhost:3000"   
      }
    }
  }
}