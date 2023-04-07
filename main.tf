terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.60.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_glue_security_configuration" "example" {
  name = "example"

  encryption_configuration {
    s3_encryption {
      kms_key_arn = data.aws_kms_key.example.arn
      s3_encryption_mode = "SSE-KMS"
    }
  }
}
