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

## Steps Performed in the Project
1. Create an IAM User  and create a user with administrative privileges on both Amazon console and API
2. Create Lambda function:
    - Create a directory for your project and name a function e.g. "Hello.py"
4. Create IAM Policy : Automatically create a policy file using the AWS policy generator.
    - Under AWS Service select AWS CloudWatch Logs
5. Create Terraform Resources:
6. To enable TerraForm to deploy Lambda functions, you need to create three .tf files in the \lambda-test\ project folder:
    - iam-lambda.tf – defines two TerraForm resources and assigns the IAM policies to them
    - provider.tf – defines AWS as a TerraForm provider
    - lambda.tf – defines the Lambda function as a TerraForm resource
7. Deploy the Lambda function to AWS:
   - Run the following command in the {TerraForm-directory} to initialize TerraForm and download plugins:
     terraforminit
     Then run this command to deploy all the resources in the project folder:
     terraform apply -auto-approve
     That’s it! TerraForm will automatically deploy your Lambda function to AWS.
9. ### Create a directory in local machine and create  terraform files in it-
     - Provider.tf to mention the AWS provided with the region defined. [Reference](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
     - Iam.tf to mentione the virtual private cloud components. [Reference](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc)
     
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

 
5. As soon you hit terraform apply, you'll see something like this in the AWS console.

   ![](https://github.com/tanuj888/AWS-CloudWatch-Lambda/blob/main/LAMBDA_FN.JPG)
6. Go to your AWS Console and you'll find a new VPC created. 
7. **Clean Up**
7. **Clean Up Resources**
  * Add a step **Terraform destroy** in the pipeline as mentioned in the scipt above which will destroy the created infrastructure. 

