/* groovylint-disable CompileStatic, DuplicateStringLiteral, NestedBlockDepth */
pipeline {
    environment {
        registry = 'asia.gcr.io/tactical-snow-384204/jenkins'
        registryCredential = 'gcr:tactical-snow-384204'
        dockerImage = ''
    }
    agent any

    stages {
        stage('Building our image') {
            steps {
                git credentialsId: '30bebbe1-4835-499d-836f-b970525deac8', url: 'https://github.com/QueenSjun/jenkins.git'
                }
            }
        stage('Building our image') {
            steps {
                git credentialsId: '30bebbe1-4835-499d-836f-b970525deac8', url: 'https://github.com/QueenSjun/jenkins.git'
                }
            }
        
        stage('Deploy our image') {
            steps {
                script {
                    docker.withRegistry('https://asia.gcr.io/tactical-snow-384204', 'gcr:tactical-snow-384204') {
                        dockerImage.push()
                    }
                }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}

