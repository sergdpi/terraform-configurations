resource "helm_release" "prometheus_operator" {
  name = "prometheus-operator"
  repository = data.helm_repository.stable.metadata.0.name
  chart = "prometheus-operator"
  version = local.helm_prometheus_operator_version
  namespace = kubernetes_namespace.monitoring.metadata.0.name

  values = [
    templatefile("${path.module}/values/prometheus-operator.yaml",
    {
      grafana_admin_pass = data.vault_generic_secret.grafana_admin_password.data["grafana_admin_password"]
    }
    )
  ]
}
