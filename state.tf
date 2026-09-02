# configure s3 backend for remote state storage

terraform {
  backend "s3" {
    bucket = "sridevopsb80-terraform"
    key    = "infra-tools/terraform.tfstate"
    region = "us-east-1"
  }
}

