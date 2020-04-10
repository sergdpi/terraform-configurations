resource "dns_a_record_set" "lb" {
  zone = "devopsua.tk."
  name = "lb"
  addresses = [
    "172.16.160.148",
  ]
  ttl = 300
}

resource "dns_a_record_set" "static" {
  zone = "devopsua.tk."
  name = "static"
  addresses = [
    "172.16.160.148",
  ]
  ttl = 300
}

resource "dns_a_record_set" "minio-a" {
  zone = "devopsua.tk."
  name = "minio-a"
  addresses = [
    "172.16.160.142",
  ]
  ttl = 300
}

resource "dns_a_record_set" "gitlab" {
  zone = "devopsua.tk."
  name = "gitlab"
  addresses = [
    "172.16.160.142",
  ]
  ttl = 300
}

resource "dns_a_record_set" "vault" {
  zone = "devopsua.tk."
  name = "vault"
  addresses = [
    "172.16.160.148",
  ]
  ttl = 300
}

resource "dns_a_record_set" "vault-b" {
  zone = "devopsua.tk."
  name = "vault-b"
  addresses = [
    "172.16.160.145",
  ]
  ttl = 300
}

resource "dns_a_record_set" "traefik" {
  zone = "devopsua.tk."
  name = "traefik"
  addresses = [
    "172.16.160.145",
  ]
  ttl = 300
}