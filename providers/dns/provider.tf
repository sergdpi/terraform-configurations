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