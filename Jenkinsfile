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
            bat "docker run -d -p 5000:5000 -p 8000:8000 my-quiz"
        }
    }
}
    }
}
