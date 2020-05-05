gitlabUrl: https://gitlab.devopsua.tk/

rbac:
  create: false
  serviceAccountName: ${serviceAccountName}

runners:
  image: docker:19.03.5
  privileged: true
  tags: "k8s,docker"
  serviceAccountName: ${serviceAccountName}

unregisterRunners: false
runnerToken: ${runner_token}