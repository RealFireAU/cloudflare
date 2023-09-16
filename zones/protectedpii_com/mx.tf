resource "cloudflare_record" "mx" {
  name     = "protectedpii.com"
  priority = 70
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route3.mx.cloudflare.net"
  zone_id  = "25d563c95e0021b9a4f2475d2d470a9e"
}

resource "cloudflare_record" "mx2" {
  name     = "protectedpii.com"
  priority = 18
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route2.mx.cloudflare.net"
  zone_id  = "25d563c95e0021b9a4f2475d2d470a9e"
}

resource "cloudflare_record" "mx3" {
  name     = "protectedpii.com"
  priority = 22
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route1.mx.cloudflare.net"
  zone_id  = "25d563c95e0021b9a4f2475d2d470a9e"
}