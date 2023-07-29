terraform {
  required_version = "~> 1.5"

  required_providers {
    helm       = "~> 2.9"
    kubernetes = "~> 2.18"
  }
}

provider "kubernetes" {
  host        = local.k8s.k8s_host
  config_path = "/Users/user/.kube/my-config"
#  cluster_ca_certificate = base64decode(data.....certificate_authority[0].data)
#  token                  = data....h.cluster.token
}

provider "helm" {
  kubernetes {
    host        = local.k8s.k8s_host
    config_path = "/Users/user/.kube/my-config"
    #  cluster_ca_certificate = base64decode(data.....certificate_authority[0].data)
    #  token                  = data....h.cluster.token
  }
}