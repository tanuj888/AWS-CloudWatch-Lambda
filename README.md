# AWS-CloudWatch-Lambda function-Terraform
Crerate AWS cloudwatch lambda function by terraform

![This is an image](https://github.com/tanuj888/AWS-CloudWatch-Lambda/blob/main/AWS-LAMBDA.JPG)
## Project Title -AWS-CloudWatch-Lambda-Terraform
This project is used to deploy Infrastructure like AWS Lambda function,Iam role and policy,scheduled event to trigger lambda function through terraform and changing the retention period of cloudwatch log group through a python script.
## Project Description
This Project contains a full, real-world solution for setting up an environment using DevOps technologies and practices for deploying cloud services/cloud infrastructure like lambda function.
## Technology Used/Details
You will be using the following technologies and platforms to set up a DevOps environment.
1. AWS 
   - AWS will be used to host the application, cloud infrastructure, and any other services we may need to ensure the VPC is deployed properly.
2. GitHub
   - To store the application and infrastructure/automation code
3. Terraform
   - To automate the infrastructure deployment on AWS 
4. Python boto3
    - Used python boto 3 script to automate the retention period of cloudwatch loggroup
5. S3
    - This tool is used to save terraform state file and enable versioning.
## Prerequisites
1. Install terraform on your local or virtual machine.
2. Create python boto 3 script on pycharm editor or any editor.
3. Configure Iam Lambda role, policy, S3 backend, cloudwatch event and lambda function on terraform.
5. Configure AWS CLI
7. Create an **IAM role** with full **administrative access** and attach it to the EC2 instance.
## Steps Performed in the Project
1. ### Create a directory in local machine and create two terraform files in it-
     - Provider.tf to mention the AWS provided with the region defined. [Reference](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
     - VPC.tf to mentione the virtual private cloud components. [Reference](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc)
     
2. ### Push the code in Github
 ````
 git init -x main
 git add .
 git commit -x "initial commit"
 git remote add origin  <REMOTE_URL> 
 git remote -v
 git push origin main/master
 ````
3. Create a new pipeline Project in Jenkins
4. Mentioned the stages in the groovy script
````
pipeline{
    agent any
    tools {
        terraform 'terraform-11'
    }
    stages{
        stage('Git Checkout'){
           steps{  
                git credentialsId: '30c1c3e9-2949-4138-971d-xxxxxxxx', url: 'https://github.com/tanuj888/Terraform-with-CI-CD'
            } 
        }
        stage('Terraform init'){
            steps{  
               sh 'terraform init'
            }
        }
        stage('Terraform Apply'){
            steps{  
               sh 'terraform apply --auto-approve'
            }
        }
        stage('Terraform Destroy'){
            steps{  
               sh 'terraform destroy --auto-approve'
            } 
        }
    }    
}
````
 
5. As soon you hit save, click on build now to build this pipeline.

   ![](https://github.com/tanuj888/Terraform-with-CI-CD/blob/main/build.JPG)
6. Go to your AWS Console and you'll find a new VPC created. 
7. **Clean Up**
7. **Clean Up Resources**
  * Add a step **Terraform destroy** in the pipeline as mentioned in the scipt above which will destroy the created infrastructure. 
0 comments on commit d4795e2
@tanuj888
 
 
Leave a comment
No file chosen
Attach files by dragging & dropping, selecting or pasting them.
 You’re receiving notifications because you’re watching this repository.
© 2022 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
Copied!
