terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


variable "tf_backup_infra_state_bucket_name" {
  type = string
  description = "The name of the bucket for the terraform state file S3 bucket"
}

resource "aws_s3_bucket" "terraform_state_bucket" {
  bucket = var.tf_backup_infra_state_bucket_name
  acl    = "private"

  lifecycle {
    prevent_destroy = true
  }
}