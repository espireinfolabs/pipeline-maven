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
				sh 'mvn clean deploy'
              }  
        }
    }
}
