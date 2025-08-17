pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("my-quiz")
                }
            }
        }
      stage('Run Container') {
    steps {
        script {
            bat "docker run -d -p 5005:5000 -p 8005:8000 my-quiz"
        }
    }
}
    }
}
