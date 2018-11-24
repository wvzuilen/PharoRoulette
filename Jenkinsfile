pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                 echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
                 echo 'Downloading pharo'
                 sh 'curl get.pharo.org | bash'
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
            }
        }
    }
}
