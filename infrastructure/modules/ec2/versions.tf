#terraform block
terraform {
    required_version = "1.0.4"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"

        }
    }
    #adding s3 as backend configurations
    backend "s3" {
    bucket = "terraform-bucket-at"
    key    = "sandbox/terraform.tfstate"
    region = "us-east-1" 
    } 
}

#provider block
provider "aws" {
    region = var.aws_region
    profile = "default"
}