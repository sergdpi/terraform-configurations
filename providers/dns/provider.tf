terraform {
  required_version = "0.12.24"
  backend "s3" {}
}

data "vault_generic_secret" "dns_rndc_key" {
  path = "kv-2/wa/dns"
}

provider "dns" {
  version = "~> 2.2"
  update {
    server        = local.dns_server_ip
    key_name      = local.dns_key_name
    key_algorithm = "hmac-md5"
    key_secret    = local.dns_rndc_key
  }
}

provider "vault" {
  version = "~> 2.8"
  address = var.vault_address
}