variable "tags" {
  description = "default tags for all object"
  type        = map(string)
  default = {
    Environment = ""
    Tenant      = ""
    Service     = ""
    Terraform   = "true"
  }
}

variable "domain" {
  type = string
}