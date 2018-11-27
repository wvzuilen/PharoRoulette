pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building with no cache...'
                sh 'docker build --no-cache -t wvzuilen/pharoroulette:latest .'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Pushing to Docker Hub...'
                sh 'docker push wvzuilen/pharoroulette'
            }
        }

    }
  post {
    always {
        cleanWs()
    }
}
}
