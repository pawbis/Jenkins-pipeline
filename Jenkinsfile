pipeline {
    agent none
    stages {
        stage('Static Code Analysis Stage') {
            agent any
            steps {
                sh 'python3 Python.py'
            }
        }
    }
}