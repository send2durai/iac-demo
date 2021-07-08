pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                echo 'This is the Parameterized Job to perform Services Spinup in AWS'
            }
        }
        stage('terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        
        stage('terraform action') {
            steps {
                echo 'terraform action from the parameter is --->${action}'
                sh 'terraform ${action} --auto-approve'
            }
        }
        
        stage('terraform action') {
            steps {
                echo 'terraform action from the parameter is --->${action}'
                sh 'terraform ${action} --auto-approve'
            }
        }
        
        stage('Happy Learning') {
            steps {
                echo 'Happy Learning ! Spread the positivity to the world'
            }
        }
    }
}
