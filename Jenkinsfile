pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: 'main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/send2durai/iac-demo.git']]])

          }
        }

        stage ("terraform init") {
            steps {
                sh ('terraform init')
            }
        }

        stage ("terraform Action") {
            steps {
                echo "This where the Jenkins admins need to select, whether he/she wants to deploy or destroy resources in AWS"
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve')
           }
        }

        stage ("Happy Learning") {
           steps {
               echo "This is the basic tutorial for setting up IAC"
           }
        }
    }
}
