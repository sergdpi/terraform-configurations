# Save state to init bucket
# https://github.com/gruntwork-io/terragrunt/pull/876
terraform {
  backend "s3" {
    bucket                      = "terraform-state-init"
    key                         = "${path_relative_to_include()}/terraform.tfstate"
    region                      = "us-east-1"
    endpoint                    = "https://minio.devopsua.tk"
    skip_requesting_account_id  = true
    skip_credentials_validation = true
    skip_get_ec2_platforms      = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    force_path_style            = true
  }
}

provider "aws" {
  region = "us-east-1"
  version = "2.41.0"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  endpoints {
    dynamodb = "http://dynamodb.devopsua.tk"
  }
}

resource "aws_dynamodb_table" "terraform_statelock" {
  name           = "wa-terraform-lock"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}