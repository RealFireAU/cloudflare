resource "cloudflare_record" "terraform_managed_resource_4aa00e4f7986c4ecff9a6f5a1a6f12bc" {
  name     = "realfire.dev"
  priority = 98
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route3.mx.cloudflare.net"
  zone_id  = "3b6f54c1b3b5db42cc518819a7b65bed"
}

resource "cloudflare_record" "terraform_managed_resource_59094dbe266e0ec82604fe359036edb0" {
  name     = "realfire.dev"
  priority = 95
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route2.mx.cloudflare.net"
  zone_id  = "3b6f54c1b3b5db42cc518819a7b65bed"
}

resource "cloudflare_record" "terraform_managed_resource_e20a1ba9cd2b4da5da3a43db02d6ae93" {
  name     = "realfire.dev"
  priority = 47
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route1.mx.cloudflare.net"
  zone_id  = "3b6f54c1b3b5db42cc518819a7b65bed"
}

resource "cloudflare_record" "terraform_managed_resource_456bc27d090bc1bccd3ec0247e514feb" {
  name    = "_dmarc"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=DMARC1; p=none; rua=mailto:ff4768cb423949e0a9d90970a8d26752@dmarc-reports.cloudflare.net"
  zone_id = "3b6f54c1b3b5db42cc518819a7b65bed"
}

resource "cloudflare_record" "terraform_managed_resource_a04900f1cff0cc9df186393625e9d629" {
  name    = "realfire.dev"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=spf1 include:_spf.mx.cloudflare.net ~all"
  zone_id = "3b6f54c1b3b5db42cc518819a7b65bed"
}

