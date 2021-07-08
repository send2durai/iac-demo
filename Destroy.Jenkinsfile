pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: 'main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/send2durai/iac-demo.git']]])
            }
        }
    }

        stage('Terraform destroy') {
            steps {
            echo "This where the Jenkins admins need to select, whether he/she wants to destroy resources in AWS"
            echo "Going to execute the terraform destroy command"
            sh 'sleep 3'
            sh 'terraform destroy --auto-approve'
        }
    }
}
