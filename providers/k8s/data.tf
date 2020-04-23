data "vault_generic_secret" "dns_rndc_key" {
  path = "kv-2/wa/dns"
}

data "helm_repository" "stable" {
  name = "stable"
  url  = "https://kubernetes-charts.storage.googleapis.com"
}
