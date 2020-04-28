#gitlabUrl: https://gitlab.devopsua.tk/
gitlabUrl: http://sg-wa-a.ua.int/

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

hostAliases:
 - ip: "172.16.160.208"
   hostnames:
   - "gitlab.devopsua.tk"
