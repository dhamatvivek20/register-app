pipeline {
	agent any
	tools {
		jdk 'jdk11'
		maven 'maven3'
	}
	stages {
		stage("cleanup Workspace"){
			steps {
				cleanWs()
			}
		}
		
		stage("Checkout from SCM"){
			steps {
				git branch: 'main', changelog: false, poll: false, url: 'https://github.com/dhamatvivek20/register-app.git'
			}
		}

		stage("Build Application"){
			steps {
				sh 'mvn clean package'
			}
		}

		stage("Test Application") {
			steps {
				sh 'mvn test'
			}
		}
		
	}
}
