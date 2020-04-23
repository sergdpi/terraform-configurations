resource "helm_release" "gitlab_runner" {
  name       = "gitlab-runner"
  repository = data.helm_repository.gitlab.metadata.0.name
  chart      = "gitlab-runner"
  version    = local.helm_gitlab_runner_version
  namespace  = kubernetes_namespace.gitlab.metadata.0.name

  values = [
    data.template_file.gitlab_runner_values.rendered
  ]
}