resource "helm_release" "traefik_ingress_internal" {
  name       = "traefik-ingress-internal"
  repository = data.helm_repository.stable.metadata.0.name
  chart      = "traefik"
  version    = local.helm_traefik_version
  namespace  = "kube-system"

  values = [
    file("${path.module}/values/traefik_ingress_internal.yaml")
  ]
}