# Deploy jenkins server in aws cloud with terraform

---

# Context

It's about writing several modules making it possible to reproduce the deployment very easily of a jenkin server on AWS, and then to export a certain number of metadata produced during execution in a text file that will be found on our Terraform machine.

**![Jenkins server](/Capute-deploy-jenkins.png)**

# prerequisites
 - Credentials: aws_access_key_id and aws_secret_access_key
 - Key-pair for ssh connexion 

 
# Steps to be carried out
Clone the Terraform-jenkins repertoire on your local machine https://github.com/coulibalytech/Terraform-jenkins.git
- 1 - Launch the "terraform init" command from the app directory/
    **![Terraform init](/screents/Terraform-init.png)**
  
- 2 - Launch the "terraform validate" command
    **![Terraform init](/screents/Terraform-validate.png)**
  
- 3 - Launch the "terraform plan" command 
    **![Terraform init](/screents/Terraform-plan.png)**
  
- 4 - Launch the "terraform apply" command 
    **![Terraform init](/screents/Terraform-apply.png)**
   Test if jenkins server is up : http://public-ip:8080
  
- 5 - Launch the "terraform destroy " command 
    **![Terraform init](/screents/Terraform-destroy.png)**
  
    **![Terraform init](/screents/Terraform-destroy-1.png)**

    **![Terraform init](/screents/Jenkins-server-reselie.png)**
