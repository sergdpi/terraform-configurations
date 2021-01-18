terraform {
  required_version = "0.12.24"
  backend "s3" {}
}

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