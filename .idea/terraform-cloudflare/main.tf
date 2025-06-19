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
  zone_id = var.zone_id
  name    = "www"
  value   = "74.208.123.48"
  type    = "A"
  proxied = true
}