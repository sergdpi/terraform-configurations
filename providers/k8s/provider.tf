provider "vault" {
  version = "~> 2.8"
  address = var.vault_address
}

provider "helm" {
  version = "1.1.1"
  kubernetes {
    config_path = local.config_path
  }
}

provider "template" {
  version = "2.1.2"
}

provider "k8s" {
  version = "0.7.6"
  config_path = local.config_path
}