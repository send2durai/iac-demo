## IAC-TERRAFORM-AWS

## Terraform is the best tool to learn by anyone, who wants to be automated their on-prem/cloud Infra

HashiCorp is the leader in infrastructure automation for multi-cloud environments. A fully managed platform to automate infrastructure on any cloud with HashiCorp products.

Here are the step that you need to perform, when you setup as fresh.

1) Create an EC2 instance in AWS (probably go ahead with tier-2)
2) Login to the EC2 instance, install Git, Java, Jenkins, Terraform and related all packages.
3) Get the Instance Public IP address to access it over the browser.
4) http://public-IP:8080/  (Jenkins default port number:8080)
5) Finish

During Jenkins setting up in EC2-Instance, we need to keep few things in mind,
1) Go to Global Tool Configuration: update Git instllations and Java Installation path
2) Terraform installation also mandatory
3) Go to manage plugins, where you search for a plugin name called "Terraform plugin" which has to be integrated with Jenkins

Note: Nowadays the companies are moving towards to CI/CD methodology to produce softwares very quick manner to the customer. The reason behind is "Time is Money" and "Time to Market" our products. Thats where the Continuous Integration and Continuous Deployment/Delivery Modelhas born.




