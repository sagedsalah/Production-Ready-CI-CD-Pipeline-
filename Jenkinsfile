pipeline {
    agent any

    environment {
        IMAGE_NAME = "ci-cd-app"
        IMAGE_TAG = "1.0"
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/sagedsalah/Production-Ready-CI-CD-Pipeline-.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t $IMAGE_NAME:$IMAGE_TAG ."
            }
        }

        stage('Run Unit Tests') {
            steps {
                sh "docker run --rm $IMAGE_NAME:$IMAGE_TAG pytest tests/"
            }
        }

        stage('Push Image (Optional)') {
            steps {
                // استخدم DockerHub أو Registry هنا
                echo "Push to DockerHub / Registry"
            }
        }
    }

    post {
        always {
            echo "Pipeline Finished"
        }
        success {
            echo "Pipeline Succeeded"
        }
        failure {
            echo "Pipeline Failed"
        }
    }
}
