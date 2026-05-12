pipeline{
  agent any
  environment{
    
    IMAGE_NAME="niharikabl995/hello"
      }
  stages{
    stage("Build java application"){
      steps{
        bat 'javac Hello.java'
      }
    }
    stage("Run java program"){
      steps{
        bat 'java Hello'
      }
    }
    stage("Build docker image"){
      steps{
        bat 'docker build -t %IMAGE_NAME%:latest .'
      }
    }
    stage("Dockerhub login"){
     steps{
      withCredentials([usernamePassword(
        credentialsId:'dockerhub-credentials',
        usernameVariable:'USER',
        passwordVariable:'PASS')]){
    
       bat 'echo %PASS%| docker login -u %USER% --password-stdin'
     }
      }
       }

     stage("Push docker image"){
       steps{
         bat 'docker push %IMAGE_NAME%:latest'
       }
     }
                      }
                      }
                      
                      
                      
                      
        
    
      
