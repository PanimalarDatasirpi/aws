terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
    access_key ="AKIAQ2NQCPKSK535UH5G"
    secret_key="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"
}

