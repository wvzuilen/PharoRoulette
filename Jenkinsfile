pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building with no cache...'
                sh 'docker build --no-cache -t wvzuilen/pharoroulette .'
                sh 'docker push wvzuilen/pharoroulette'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Cleaning workspace...') {
            steps {
                echo 'Deploying....'
                deleteDir()
            }
        }
    }
}
