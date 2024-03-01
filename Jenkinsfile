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
                sh 'mvn clean deploy'
              }  
        }
    }
}
