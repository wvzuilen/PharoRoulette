pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building with no cache...'
                sh 'docker build --no-cache -t wvzuilen/pharoroulette .'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Pushing to Docker Hub...'
                sh 'docker push wvzuilen/pharoroulette'
            }
        }
        stage('Clean') {
            steps {
                echo 'Cleaning workspace....'
                deleteDir()
            }
        }
    }
}
