resource "k8s_manifest" "prometheus_traefik_alerts" {
  namespace = kubernetes_namespace.monitoring.metadata.0.name
  content = file("${path.module}/prometheus_alerts/traefik_external_alerts.yaml")
  depends_on = [
    helm_release.prometheus_operator
  ]
}