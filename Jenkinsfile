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
                sh '''
                    if [[ "$(docker images jenkins/python 2> /dev/null)" == "" ]]; then
                        echo "Docker Image exists!" >&2
                    fi
                '''
            }
        }
    }
}