pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('jenkins-aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('jenkins-aws-secret-access-key-id')
    }

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

        stage ("terraform destroy") {
            steps {
                echo "This where the Jenkins admins need to select, whether he/she wants to destroy resources in AWS"
                echo "Going to execute the terraform apply command"
                sh 'sleep 3'
                sh 'terraform destroy --auto-approve'
           }
        }
     }
}
