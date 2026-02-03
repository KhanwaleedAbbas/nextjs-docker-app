pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: '982fa5ee-9150-4d8b-a1ce-b7481ea6a21d', url: 'https://github.com/KhanwaleedAbbas/nextjs-docker-app.git'
            }
        }
        stage('Build') {
            steps {
                echo 'Building your application...'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
            }
        }
    }
}
