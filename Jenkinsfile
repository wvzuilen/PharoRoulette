pipeline {
    agent any
    environment {
                AWS_KEY_PATH  = credentials('AWS_KEY_PATH')
                AWS_HOST      = credentials('AWS_HOST')
            }
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
        stage('Restart') {
            steps {
                echo 'Restarting PharoRoulette container...'
                sh 'ssh -o StrictHostKeyChecking=No -i $AWS_KEY_PATH $AWS_HOST /home/ubuntu/restart_pr.sh'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
