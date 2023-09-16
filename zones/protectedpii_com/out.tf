resource "cloudflare_record" "terraform_managed_resource_a56093eb8b51f6c19093d14a5806be87" {
  name     = "protectedpii.com"
  priority = 70
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route3.mx.cloudflare.net"
  zone_id  = "25d563c95e0021b9a4f2475d2d470a9e"
}

resource "cloudflare_record" "terraform_managed_resource_883ca8a7d6e71546e85880cea87f3cd6" {
  name     = "protectedpii.com"
  priority = 18
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route2.mx.cloudflare.net"
  zone_id  = "25d563c95e0021b9a4f2475d2d470a9e"
}

resource "cloudflare_record" "terraform_managed_resource_a80a816ed0424ab0619f3cf4f7ac427e" {
  name     = "protectedpii.com"
  priority = 22
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route1.mx.cloudflare.net"
  zone_id  = "25d563c95e0021b9a4f2475d2d470a9e"
}

resource "cloudflare_record" "terraform_managed_resource_dddea226ef92db2c65f2ea2c8e01d0f5" {
  name    = "_dmarc"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=DMARC1; p=reject; rua=mailto:b1d3bfc8a5674eb1bee637ed997e68a0@dmarc-reports.cloudflare.net"
  zone_id = "25d563c95e0021b9a4f2475d2d470a9e"
}

resource "cloudflare_record" "terraform_managed_resource_75f72bfc70ca2cb77a14324603d89793" {
  name    = "protectedpii.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=spf1 include:_spf.mx.cloudflare.net ~all"
  zone_id = "25d563c95e0021b9a4f2475d2d470a9e"
}

