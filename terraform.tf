terraform {
  backend "s3" {
    bucket = "kevcoxe-tf-aws-backup-infra"
    key    = "drone-test-tf.tfstate"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {}