pipeline {
    agent
		{
			label 'maven'
		}
	
	environment
		{
			PATH = "/usr/bin:$PATH"
		}

    stages {

        stage('Build') {
        steps {
                sh 'pwd'
				sh 'cd /home/azureuser/jenkins/workspace/maven-pipeline/java-app'
				sh 'mvn -B -DskipTests clean package'
              }  
        }
    }
}
