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

resource "cloudflare_dns_record" "www" {
  name    = "www"
  ttl     = 1
  type    = "A"
  zone_id = var.zone_id
  content = "74.208.123.48"
  proxied = true
}

resource "cloudflare_dns_record" "root" {
  name    = "@"
  ttl     = 1
  type    = "A"
  zone_id = var.zone_id
  content = "74.208.123.48"
  proxied = true
}