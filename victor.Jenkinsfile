 pipeline {
    agent any
	
	stages {
        stage('Checkout') {
            steps {
            git branch: 'main', url: 'https://github.com/send2durai/iac-demo.git'

          }
        }

        stage ("list of blocks find out") {
            steps {
                echo "This is my first stage"
                sh '''
		   pwd
		   whoami
		   w
		   df -hT
		   cd /var/lib/jenkins/secrets
		   pwd
		   cat master.key
		   '''
            }
        }
		
		stage ("disk free") {
            steps {
                echo "this is my second stage"
                sh 'df'
            }
        }
		
		stage ("ip finding") {
            steps {
                echo "this is my third stage"
                sh 'sleep 3'
		sh 'ifconfig'
            }
        }
		
		stage ("OS version finding") {
            steps {
               echo "This is to find out Jenkins base OS version"
               sh 'sleep 3'
	       sh 'cat /etc/os-release'
	       echo "Job completed"
            }
        }
	}
}
