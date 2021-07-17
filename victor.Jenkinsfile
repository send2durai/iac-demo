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
		   yum remove -y bind-utils
		   sleep 2
		   yum update -y
		   updatedb
		   yum install -y bind-utils
		   yum list installed | grep 'bind-utils'
		   sleep 2
		   nslookup google.com
		   nslookup amazon.com | grep 'Address'
		   nslookup amazon.com | grep 'Name'
		   curl http://169.254.169.254/latest/meta-data
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
