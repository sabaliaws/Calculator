pipeline {
    agent any
    environment {
        PATH = "/opt/apache-maven-3.8.3/bin:$PATH"
        registry = "sunku/dockernew"
        registryCredential = "dockercredentials"
        dockerImage = ''
                }
    stages {
       stage('GIT CHECKOUT') {
            steps {
               checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/sabaliaws/spring3-mvc-maven-xml-hello-world.git']]])
            }
        }
        stage('BUILD') {
            steps {
                sh "mvn clean package"
            }
        }
        stage('Docker Build') {
           steps {
               sh 'docker build -t ads22/dockernew:7 .'
                }
        }
        stage('Publish image to Docker Hub'){
            steps {
        withDockerRegistry([ credentialsId: "dockercredentials", url: "" ]) {
          sh  'docker push ads22/dockernew:7'
          }
          }
          }
    }
}
