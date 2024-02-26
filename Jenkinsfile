pipeline {
    agent any
	
	environment{
        PASS = credentials('dockerhub-registry-credentials')
         }
	
	stages {
	
	stage('Build') {
        steps {
                sh '''
				     ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
					 ./jenkins/build/build.sh
				   '''
            }
        }
        
    stage('Test') {
            steps {
				sh './jenkins/build/test.sh mvn test'
				
				  }
        }
        
    stage('Push') {
            steps {
				sh './jenkins/push/push.sh'
				 }
        }
		
	stage('Deploy') {
            steps {
				sh './jenkins/deploy/deploy.sh'
				 }
        }

    }
	
	}
