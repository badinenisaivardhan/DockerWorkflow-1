pipeline {
  agent any
  stages {
    stage('Docker Build & Deploy') {
      steps{
         sh """ssh -tt badinenisaivardhan@192.168.0.100 << EOF 
            cd Desktop
            rm -rf docker-1
            git clone https://github.com/badinenisaivardhan/docker-1.git
            cd docker-1
            docker build --no-cache -t mynodeapp .
            docker run -d -p 3000:3000 --name mynodeapp mynodeapp
            exit
            EOF"""
      }
    }
    stage('Testing The Endpoint') {
      steps{
        sh 'sleep 60'
        sh "curl -i 192.168.0.100:3000"   
      }
    }
  }
}