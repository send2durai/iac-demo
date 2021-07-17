 pipeline {
    agent any
	
	stages {
        stage('Checkout') {
            steps {
            git branch: 'main', url: 'https://github.com/send2durai/iac-demo.git'

          }
        }

        stage ("terraform init") {
            steps {
                echo "Going to initialise the terraform module and download the plugin"
                sh 'terraform init'
            }
        }
		
		stage ("terraform format") {
            steps {
                echo "Going to initialise the terraform module and download the plugin"
                sh 'terraform fmt'
            }
        }
		
		stage ("Victor Demo") {
            steps {
                echo "Just Name shake, am keeping this stage"
                sh 'sleep 3'
		        echo "Demo stage
            }
        }
		
		stage ("Job completed") {
            steps {
               echo "Just Name shake, am keeping this stage"
               sh 'sleep 3'
		       echo "Job completed"
            }
        }
	}
}
