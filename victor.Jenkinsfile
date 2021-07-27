pipeline {
   agent any

 stages {
       stage('Checkout') {
           steps {
           git branch: 'main', url: 'https://github.com/send2durai/iac-demo.git'

         }
       }

       stage ("Linux Commands execution") {
           steps {
               echo "This is my first stage"
               sh '''
               pwd
               whoami
               w # used to show who is logged on and what they are doing.
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
               sleep 3
               curl http://169.254.169.254/latest/meta-data/hostname
               sleep 3
               curl http://169.254.169.254/latest/meta-data/iam
               sleep 3
               curl http://169.254.169.254/latest/meta-data/iam/security-credentials/ec2-admin-role
               sleep 3
               '''
           }
       }

   stage ("Disk free") {
           steps {
               echo "this is my second stage"
               sh 'df'
           }
       }

   stage ("Ip finding") {
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

       stage ("Linux and AWS CLI checking") {
           steps {
               echo "This AWS CLI performing some basics"
               sh '''
               pwd
               whoami
               w
               nslookup google.com
               nslookup amazon.com | grep 'Address'
               nslookup amazon.com | grep 'Name'
               curl http://169.254.169.254/latest/meta-data
               sleep 3
               curl http://169.254.169.254/latest/meta-data/hostname
               sleep 3
               curl http://169.254.169.254/latest/meta-data/iam
               sleep 3
               curl http://169.254.169.254/latest/meta-data/iam/security-credentials/ec2-admin-role
               sleep 3
               echo 'completed all steps in stages what we specified'
               '''
            }
          }

          stage ("Sending notification on Slack") {
              steps {
                echo "post job, alerting to the administrator on the job status"
                slackSend baseUrl: 'https://hooks.slack.com/services/', 
                channel: 'devops', color: 'good', 
                message: 'Slack Notification on iac-demo', 
                teamDomain: 'Game_Changer', 
                tokenCredentialId: 'a63f9463-49a5-4804-bbd6-0aad198efa29'
              }
            }
        }
    }
