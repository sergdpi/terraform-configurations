locals {
  dns_server_ip = "172.16.160.142"
  dns_key_name  = "devopsua.key."
  dns_rndc_key  = data.vault_generic_secret.dns_rndc_key.data["dns_rndc_key"]
}