variable "aws_region" {}
variable "terraform_remote_state_s3_bucket" {}
variable "terraform_remote_state_file_name" {}
variable "vault_address" {}

locals {
  dns_server_ip = "172.16.160.208"
  dns_key_name  = "devopsua.key."
  dns_rndc_key  = data.vault_generic_secret.dns_rndc_key.data["dns_rndc_key"]
}