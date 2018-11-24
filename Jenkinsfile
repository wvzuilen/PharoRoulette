pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                 echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
                 echo 'Downloading pharo'
                 sh 'curl get.pharo.org | bash'
                 echo "Workspace: ${WORKSPACE}"
                 sh './pharo Pharo.image eval 2+2'
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
