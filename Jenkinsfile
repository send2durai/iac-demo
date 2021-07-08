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
                echo "Going to initialise the terraform module and download the plugin"
                sh 'terraform init'
            }
        }

        stage("terraform validate") {
            steps {
                echo"Going to validate the code written in HCL"
                sh 'terraform validate'
            }
        }

        stage("terraform plan") {
            steps {
                echo "Going to show us, what is going to be spin up"
                sh 'terraform plan'
            }
        }

        stage ("terraform Apply") {
            steps {
                echo "This where the Jenkins admins need to select, whether he/she wants to deploy resources in AWS"
                echo "Going to execute the terraform apply command"
                sh 'sleep 3'
                sh 'terraform apply --auto-approve'
           }
        }
     }
}
