pipeline {
    agent any
    
    tools {
        terraform 'Terraform'
    }
    stages {
        stage ("checkout from GIT") {
            steps {
                git branch: 'main', credentialsId: '313ea927-c52a-46bd-9bd2-c038ac77803c', url: 'https://github.com/send2durai/iac-demo.git'
                
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
        stage ("terrform destroy") {
            steps {
                sh 'terraform destroy --auto-approve'
            }
        }   
    }
}
