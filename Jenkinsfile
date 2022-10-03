pipeline {
  agent any
  stages {
    stage('Change To Host') {
      steps{
        sh "ssh badinenisaivardhan@192.168.0.100"  
      }
    }
    stage('Cloning Git') {
        steps{
            sh 'cd Desktop'  
        }
    }
    stage('Build Docker File') {
      steps{
        sh "docker build . -t node/web-app"
      }
    }
    stage('Start Container On Build Image') {
      steps{
        sh "docker run -d -p 9000:9000 -name nodeapp node/web-app"
        
      }
    }
    stage('Testing The Endpoint') {
      steps{
        sh " curl -i localhost:9000"  
      }
    }
  }
}