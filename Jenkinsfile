pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'docker build -t wvzuilen/pharoroulette .'
                sh 'docker push wvzuilen/pharoroulette'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                deleteDir()
            }
        }
    }
}
