resource "kubernetes_namespace" "gitlab" {
  metadata {
    name = "gitlab"
  }
}

resource "kubernetes_namespace" "monitoring" {
  metadata {
    name = "monitoring"
  }
}

provider "kubernetes" {
  version     = "~> 1.11"
  config_path = local.config_path
}
