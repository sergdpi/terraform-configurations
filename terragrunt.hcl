remote_state {
  backend = "s3"

  config = {
    bucket = "terraform-state"
    key               = "${path_relative_to_include()}/terraform.tfstate"
    encrypt           = false
    region            = "us-east-1"
    endpoint          = "https://minio.devopsua.tk"
    # https://github.com/gruntwork-io/terragrunt/pull/876
    #dynamodb_endpoint = "http://dynamodb.devopsua.tk"
    #dynamodb_table    = "ats-terraform-lock"
    skip_requesting_account_id = true
    skip_credentials_validation = true
    skip_get_ec2_platforms = true
    skip_metadata_api_check = true
    skip_region_validation = true
    force_path_style = true
  }
}

inputs = {
  aws_region                            = "eu-west-1"
  terraform_remote_state_s3_bucket      = "terraform-state"
  terraform_remote_state_dynamodb_table = "wa-terraform-lock"
  terraform_remote_state_file_name      = "terraform.tfstate"
  vault_address                         = "https://vault.devopsua.tk"
}