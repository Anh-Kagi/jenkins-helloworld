pipeline {
	agent none
	environment {
	    dockerImage = ''
	}
	stages {
	    stage('Git Clone') {
	        agent any
            steps {
                git 'https://github.com/Anh-Kagi/jenkins-helloworld'
            }
	    }
        stage('Docker Build') {
            agent any
            steps {
                script {
                    dockerImage = docker.build 'anhkagi/jenkins-hw:latest'
                }
            }
        }
        stage('Docker Push') {
            agent any
            steps {
                script {
                    docker.withRegistry('', 'dockerHub') {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}