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
	}
 }
