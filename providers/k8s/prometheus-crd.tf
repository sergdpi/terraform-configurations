# Deploy Prometheus CRDS with Helm provider

resource "kubernetes_namespace" "monitoring" {
  metadata {
    name = "monitoring"
  }
}

resource "helm_release" "prometheus_crds" {
  name       = "kube-prometheus-stack-crds"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "prometheus-operator-crds"
  version    = "5.0.0"
  namespace  = kubernetes_namespace.monitoring.metadata[0].name
}