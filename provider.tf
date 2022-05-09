provider "aws" {
  region = "ap-southeast-2"
}

terraform {
  backend "http" {
  }
}


/*terraform {
    backend "s3" {
    bucket = "tjbucket"
    key    = "key/terraform.tfstate"
    region = "ap-southeast-2"
  }
}*/
