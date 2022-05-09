provider "aws" {
  region = "ap-southeast-2"
}

terraform {
  backend "http" {
  }
}

/*terraform init \
    -backend-config="address=https://gitlab.com/api/v4/projects/35924451/terraform/state/AWS-CloudWatch-Lambda" \
    -backend-config="lock_address=https://gitlab.com/api/v4/projects/35924451/terraform/state/AWS-CloudWatch-Lambda" \
    -backend-config="unlock_address=https://gitlab.com/api/v4/projects/35924451/terraform/state/AWS-CloudWatch-Lambda" \
    -backend-config="username=tanujjain" \
    -backend-config="password=glpat-QJggChY3NtWBcDzUPrUo" \
    -backend-config="lock_method=POST" \
    -backend-config="unlock_method=DELETE" \
    -backend-config="retry_wait_min=5"

/*terraform {
    backend "s3" {
    bucket = "tjbucket"
    key    = "key/terraform.tfstate"
    region = "ap-southeast-2"
  }
}*/
