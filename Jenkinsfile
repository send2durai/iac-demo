pipeline {
    agent any
    
    tools {
        terraform 'terraform'
    }
    stages {
        stage ("checkout from GIT") {
            steps {
                git branch: 'main', credentialsId: '85266fc4-98d3-415b-8e1d-23a83d5e8951', url: 'https://github.com/send2durai/iac-demo.git'
                
            }
        }
        stage ("terraform init") {
            steps {
                sh 'terraform init'
            }
        }
        stage ("terraform fmt") {
            steps {
                sh 'terraform fmt'
            }
        }
        stage ("terraform validate") {
            steps {
                sh 'terraform validate'
            }
        }
        stage ("terrafrom plan") {
            steps {
                sh 'terraform plan '
            }
        }
        stage ("terraform apply") {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
        stage ("terraform destroy") {
            steps {
                sh 'terraform destroy --auto-approve'
            }
        }
    }
}
