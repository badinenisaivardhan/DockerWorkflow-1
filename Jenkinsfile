pipeline {
  environment {
    registry = "gustavoapolinario/docker-test"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/badinenisaivardhan/docker-1.git'
      }
    }
    stage('Building image') {
      steps{
        script {
          docker build -t node/web-app .
        }
      }
    }
    stage('Start Container On Build Image') {
      steps{
        script {
          docker run -d -p 9000:9000 -name nodeapp node/web-app
        }
      }
    }
    stage('Testing The Endpoint') {
      steps{
        sh " curl -i localhost:9000"  
      }
    }
  }
}