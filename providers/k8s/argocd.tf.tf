# Generate and bcrypt password
resource "random_password" "argocd_pass" {
  length  = 16
  special = false
}

resource "null_resource" "bcrypted_password" {
  triggers = {
    result = bcrypt(random_password.argocd_pass.result)
  }
  lifecycle {
    ignore_changes = all
  }
}

resource "kubernetes_namespace" "argocd" {
  metadata {
    name = "argocd"
  }
}

# Deploy ArgoCD with Helm provider
resource "helm_release" "argo-cd" {
  name       = "argo-cd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = local.argocd.argocd_helm_chart_version
  namespace  = "argocd"

  values = [templatefile("${path.module}/values/argocd-values.yaml", {
    domain             = local.argocd.argocd_domain
    url                = "https://${local.argocd.argocd_domain}"
    admin_password     = null_resource.bcrypted_password.triggers.result
    read_only_password = local.argocd.read_only_password
  })]

  depends_on = [
    kubernetes_namespace.argocd,
    helm_release.prometheus_crds
  ]

}