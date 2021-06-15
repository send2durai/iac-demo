pipeline {
    agent any
    
    tools {
        terraform 'Terraform'
    }
    stages {
        stage ("checkout from GIT") {
            steps {
                git branch: 'main', credentialsId: '8e5538c9-18f5-406f-9c48-c388b15b44a9', url: 'https://github.com/send2durai/iac-demo.git'
                
            }
        }
        stage ("terraform init") {
            steps {
                sh 'Initialize a working directory containing Terraform configuration files'
                sh 'terraform init'
            }
        }
        stage ("terraform fmt") {
            steps {
                sh 'Is used to rewrite Terraform configuration files to a canonical format and style'
                sh 'terraform fmt'
            }
        }
        stage ("terraform validate") {
            steps {
                sh 'Is used to validate the syntax of the terraform files'
                sh 'terraform validate'
            }
        }
        stage ("terrafrom plan") {
            steps {
                sh 'Creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure'
                sh 'terraform plan'
            }
        }
        stage ("terraform apply") {
            steps {
                sh 'Command executes the actions proposed in a Terraform plan.'
                sh 'terraform apply --auto-approve'
                sh 'echo "taking a break for a while"'
                sh 'sleep 5'
                sh 'proceeding with resource deletion on next stage'
            }
        }
        stage ("terrform destroy") {
            steps {
                sh 'To delete all the resources, run terraform destroy'
                sh 'AWS resources are deleting one after another'
                sh 'sleep 5'
                sh 'terraform destroy --auto-approve'
            }
        }   
    }
}
