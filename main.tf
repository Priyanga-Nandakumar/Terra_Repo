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

    s3_encryption {
      aws_kms_key_id = aws_kms_key.test.arn
      s3_encryption_mode = "SSE-KMS"

    }
  }
