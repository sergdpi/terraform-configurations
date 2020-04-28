data "vault_generic_secret" "dns_rndc_key" {
  path = "kv-2/wa/dns"
}

data "helm_repository" "stable" {
  name = "stable"
  url  = "https://kubernetes-charts.storage.googleapis.com"
}

data "helm_repository" "gitlab" {
  name = "gitlab"
  url  = "https://charts.gitlab.io"
}

data "vault_generic_secret" "gitlab_runner_zw" {
  path = "kv-2/wa/gitlab"
}