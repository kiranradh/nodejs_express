terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
  region = "ap-northeast-1"
  access_key = "AKIATSPZJGVFW6ABSSV2"
  secret_key = "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"

  default_tags {
    tags = {
      Name = "architect-demo"
    }
  }
}
