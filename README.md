# Deploy jenkins server in aws cloud with terraform

---

# Context

It's about writing several modules making it possible to reproduce the deployment very easily of a jenkin server on AWS, and then to export a certain number of metadata produced during execution in a text file that will be found on our Terraform machine.

**![Jenkins server](/Capute-deploy-jenkins.png)**

# prerequisites
 - Credentials: aws_access_key_id and aws_secret_access_key
 - Key-pair for ssh connexion 

 
# Steps to be carried out
Clone the Terraform-jenkins repertoire on your local machine 
