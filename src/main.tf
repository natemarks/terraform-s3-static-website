# ---------------------------------------------------------------------------------------------------------------------
# Create the user, group and policy to access the desktop download s3 bucket
# ---------------------------------------------------------------------------------------------------------------------

terraform {
  # Live modules pin exact Terraform version; generic modules let consumers pin the version.
  # The latest version of Terragrunt (v0.19.0 and above) requires Terraform 0.12.0 or above.
  required_version = ">= 1.0.6"

  # Live modules pin exact provider version; generic modules let consumers pin the version.
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
    template = {
      source = "hashicorp/template"
    }
  }
}


provider "aws" {
  alias  = "acm_provider"
  region = "us-east-1"
}