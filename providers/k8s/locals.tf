locals {
  k8s = {
    k8s_host                            = "https://k8s-api.example.dev:6443"
    k8s_cluster_ca_certificate          = ""
    k8s_token_terraform_service_account = ""
  }
  argocd = {
    argocd_domain             = "argocd.${var.domain}"
    argocd_helm_chart_version = "5.34.6"
    read_only_password        = "$2a$10$HOm8PxB3xGamijBKof65SuXzoQbqD3S5DrXGh1hlFYZtPY5f2ui8m" #todo: use random
  }
}