pipeline {
    agent none
    stages {
        stage('Static Code Analysis Stage') {
            agent any
            steps {
                sh 'python3 Python.py'
            }
        }
        stage("Building the Docker Image!") {
            agent any 
            steps {
                sh 'docker build -t Jenkins/Python:1.0 .'
            }
        }
    }
}