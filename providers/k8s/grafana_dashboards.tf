resource "k8s_manifest" "grafana_node_exporter" {
  namespace = kubernetes_namespace.monitoring.metadata.0.name
  content = file("${path.module}/grafana_dashboards/traefik_external.yaml")
  depends_on = [
    helm_release.prometheus_operator
  ]
}