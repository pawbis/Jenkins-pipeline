pipeline {
    agent none
    stages {
        stage('Static Code Analysis Stage') {
            agent any
            steps {
                sh 'python3 Python.py'
            }
        }
        stage("Building the Docker Image") {
            agent any 
            steps {
                sh 'docker build -t jenkins/python:1.0 .'
            }
        }
        stage("Testing if image exists") {
            agent any
            steps {
                sh 'chmod +x ./Image_test.sh'
                sh './Image_test.sh'
            }
        }
        stage("Testing if image is working") {
            agent any
            steps {
                sh 'docker container run jenkins/python:1.0'
            }
        }
        stage("Pushing working image to repository") {
            agent any
            steps {
                withCredentials([usernamePassword(credentialsId: 'Dockerhub', passwordVariable: 'DockerhubPassword', usernameVariable: 'DockerhubUser')]) {
                    sh "docker login -u ${env.DockerhubUser} -p ${env.DockerhubPassword}"
                sh 'docker tag jenkins/python:1.0 pawbis/jenkins:1.0'
                sh 'docker push pawbis/jenkins:1.0'
                }
            }
        }
    }
}