terraform {
  required_version = "~> 0.13.0"
  backend "s3" {}

  required_providers {
    aws       = "~> 3.2"
    random    = "~> 2.2.1"
    local     = "~> 1.2"
    template  = "~> 2.1"
  }
}

data "aws_caller_identity" "current" {}



