pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building without cache...'
                sh 'docker login'
                sh 'docker build --no-cache -t wvzuilen/pharoroulette:latest .'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Pushing to Docker Hub...'
                sh 'docker push wvzuilen/pharoroulette:latest'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
