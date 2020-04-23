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