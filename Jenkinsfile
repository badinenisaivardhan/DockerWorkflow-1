pipeline {
  agent any
  stages {
    // stage("Checkout GitHub"){
    //     steps{
    //        checkout changelog: false, poll: false, scm: [$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/badinenisaivardhan/docker-1.git']]]
    //     }   
    // }
    stage("Create/Build Docker Image"){
        steps{
         sh 'docker build --no-cache -t mynodeapp .'
        }
    }
    stage("Stop Exisitng Running Container and Remove Container "){
        script {
                try {
                    sh 'docker stop mynodeapp'
                    sh 'docker rm mynodeapp -f'
                } catch (err) {
                    echo "No Running Container"
                
                }
        }
    }    
    stage("Create Container from Build"){
        steps{
        sh 'docker run -d -p 3000:3000 --name mynodeapp mynodeapp'
        }
    }
    stage("Uptime Status"){
        steps{
        sh 'sleep 30'
        sh 'curl -i 192.168.0.100:3000'
        }
    }
  }
}