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
  access_key = "AKIATSPZJGVFV7P4IOXR"
  secret_key = "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"

  default_tags {
    tags = {
      Name = "architect-demo"
    }
  }
}
