resource "helm_release" "prometheus_blackbox_exporter" {
  name       = "prometheus-blackbox-exporter"
  repository = data.helm_repository.stable.metadata.0.name
  chart      = "prometheus-blackbox-exporter"
  version    = local.helm_prometheus_blackbox_exporter_version
  namespace  = kubernetes_namespace.monitoring.metadata.0.name

  values = [
    data.template_file.prometheus_blackbox_exporter_values.rendered
  ]
}

data "template_file" "prometheus_blackbox_exporter_values" {
  template = file("${path.module}/values/prometheus_blackbox_exporter.yaml")

  vars = {
    secret_wa_value = aaa
  }
}