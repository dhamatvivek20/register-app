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
		stage("SonarQube Analysis") {
			steps {
				script {
					withSonarQubeEnv(credentialsId: '6e88d42c-041b-47b8-89ee-26c83003cc8a') {
    						sh 'mvn sonar:sonar'
					}
				}
			}
		}

		stage("Build Docker Image") {
			steps {
				script {
					sh 'docker build -t dhamatvivek/register-app:latest .'
				}
			}
		}

		stage("Push Docker Image") {
			steps {
				script {
					withDockerRegistry(credentialsId: '5b0c0423-ffea-46a7-955e-1114f1c45500') {
						sh 'docker push dhamatvivek/register-app:latest'
					}
				}
			}
		}

		stage ('Cleanup Artifacts') {
           		steps {
               			script {
                    			sh "docker rmi dhamatvivek/register-app:latest"
              			}
          		}
       		}
		
		stage('Deploy to Kubernetes') {
            		steps {
                    		withCredentials([
                        		file(credentialsId: 'cacrt', variable: 'CA_CERT_PATH'),
                        		file(credentialsId: 'clientkey', variable: 'CLIENT_KEY_PATH'),
                        		file(credentialsId: 'clientcrt', variable: 'CLIENT_CERT_PATH'),
                        		kubeconfigContent(credentialsId: 'K8cred', variable: 'KUBECONFIG_CONTENT')
                    ]) {
                        script {
                            def kubeconfig = env.KUBECONFIG_CONTENT
                            kubeconfig = kubeconfig.replaceAll('/home/vivek/.minikube/ca.crt', env.CA_CERT_PATH)
                            kubeconfig = kubeconfig.replaceAll('/home/vivek/.minikube/profiles/minikube/client.crt', env.CLIENT_CERT_PATH)
                            kubeconfig = kubeconfig.replaceAll('/home/vivek/.minikube/profiles/minikube/client.key', env.CLIENT_KEY_PATH)
                            writeFile file: 'kubeconfig', text: kubeconfig
                            env.KUBECONFIG = 'kubeconfig'
                            env.PATH = "/usr/local/bin/:" + env.PATH
                            sh 'echo $PATH'
                            sh 'kubectl get pods'
                            sh 'kubectl apply -f deployment-service.yaml'
			    sh 'minikube start --profile=minikube'
		            sh 'minikube service register-app-service'

                        		}
                    		}
                
            		}
        	}
		
	}
}
