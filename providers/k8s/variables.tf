variable "aws_region" {}
variable "terraform_remote_state_s3_bucket" {}
variable "terraform_remote_state_file_name" {}
variable "vault_address" {}

locals {
  config_path                      = "~/.kube/wa-config"
  helm_argocd_version              = "2.11.1"
  argocd_community_helm_repository = "https://argoproj.github.io/argo-helm"
}