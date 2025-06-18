terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "5.6.0"
    }
  }
}

provider "cloudflare" { # Configuration options
  api_token = var.cloudflare_api_token
}

variable "zone_id" {
  default = "7464bce49e4134da1b7a148a027d0a13"
}

variable "account_id" {
  default = "e9fe21cb5a614d4dd040d4a3234e2411"
}

variable "domain" {
  default = "ethanbalik.com"
}

resource "cloudflare_dns_record" "www" {
  zone_id = var.zone_id
  name    = "www"
  value   = "74.208.123.48"
  type    = "A"
  proxied = true
}