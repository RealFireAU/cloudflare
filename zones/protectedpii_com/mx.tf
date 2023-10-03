resource "cloudflare_record" "mx" {
  name     = "protectedpii.com"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "in1-smtp.messagingengine.com"
  zone_id  = "25d563c95e0021b9a4f2475d2d470a9e"
}

resource "cloudflare_record" "mx2" {
  name     = "protectedpii.com"
  priority = 20
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "in2-smtp.messagingengine.com"
  zone_id  = "25d563c95e0021b9a4f2475d2d470a9e"
}