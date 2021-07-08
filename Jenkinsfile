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
                sh 'Going to initialise the terraform module and download the plugin'
                sh ('terraform init')
            }
        }

        stage ("terraform Apply") {
            steps {
                echo "This where the Jenkins admins need to select, whether he/she wants to deploy resources in AWS"
                echo "Going to execute the terraform apply"
                sh 'sleep 3'
                sh ('terraform apply --auto-approve')
           }
        }

        stage ("terraform Destroy") {
            steps {
                echo "This where the Jenkins admins need to select, whether he/she wants to destroy resources in AWS"
                echo "Going to execute the terraform destroy"
                sh 'sleep 3'
                sh ('terraform destroy --auto-approve')

        stage ("Happy Learning") {
           steps {
               echo "This is the basic tutorial for setting up IAC"
               echo "IAC using Jenkins parameterized build"
           }
        }
      }
     }
   }
}
