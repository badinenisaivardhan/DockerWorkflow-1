pipeline {
  agent any
  stages {
    stage("Checkout GitHub"){
        steps{
            checkout changelog: false, poll: false, scm: [$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/badinenisaivardhan/docker-1.git']]]
        }   
    }
  }
}