pipeline {
    agent
		{
			label 'maven-slave'
		}

    stages {

        stage('Hello') {
        steps {
                sh 'Java -version'
				echo 'Get working directory'
				sh 'pwd'
              }  
        }
    }
}
