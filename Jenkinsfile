pipeline {
    agent any
    tools {
        maven '3.8.6'
    }
    stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/imran1609/sweassign']]])
                sh 'mvn clean install'
            }
        }
        stage('Build Docker Image'){
            steps{
                script{
                    def customImage = docker.build("imran1609/sweassign3boot:${env.BUILD_NUMBER}")
                }
            }
        }
        stage('Push Image To Hub'){
            steps{
                script{
                    sh "docker login -u imran1609 -p imran1609"
                    sh "docker push imran1609/sweassign3boot:${env.BUILD_NUMBER}"
				}
			}
		}
		stage("Deploying to Kubernetes"){
			steps{
				script{
					sh "kubectl set image deployment/assignment3dep sweassign3boot=imran1609/sweassign3boot:${env.BUILD_NUMBER}"
				}
			}
		}
	}
}