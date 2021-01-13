resource "helm_release" "argocd" {
  name = "argo-cd"
  repository = local.argocd_community_helm_repository
  chart = "argo-cd"
  version = local.helm_argocd_version
  namespace = "argocd"

  values = [
    file("${path.module}/values/argocd.yaml")
  ]
}
