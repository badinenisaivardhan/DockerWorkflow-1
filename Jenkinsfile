pipeline {
  agent any
  stages {
    stage('Docker Build & Deploy') {
      steps{
        sh """" 
        ssh badinenisaivardhan@192.168.0.100
        cd Desktop
        git clone https://github.com/badinenisaivardhan/docker-1.git
        cd docker-1
        docker build . -t node/web-app
        docker run -d -p 9000:9000 -name nodeapp node/web-app
        """ 
      }
    }
    stage('Testing The Endpoint') {
      steps{
        sh " curl -i localhost:9000"  
      }
    }
  }
}