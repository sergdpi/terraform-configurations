resource "kubernetes_namespace" "gitlab" {
  metadata {
    name = "gitlab"
  }
}

provider "kubernetes" {
  version     = "~> 1.11"
  config_path = local.config_path
}