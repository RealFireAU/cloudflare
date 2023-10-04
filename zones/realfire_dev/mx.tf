resource "cloudflare_record" "mx1" {
  name     = "realfire.dev"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "in1-smtp.messagingengine.com"
  zone_id  = "3b6f54c1b3b5db42cc518819a7b65bed"
}

resource "cloudflare_record" "mx2" {
  name     = "realfire.dev"
  priority = 20
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "in2-smtp.messagingengine.com"
  zone_id  = "3b6f54c1b3b5db42cc518819a7b65bed"
}

resource "cloudflare_record" "mx3" {
  name     = "*.realfire.dev"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "in1-smtp.messagingengine.com"
  zone_id  = "3b6f54c1b3b5db42cc518819a7b65bed"
}

resource "cloudflare_record" "mx4" {
  name     = "*.realfire.dev"
  priority = 20
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "in2-smtp.messagingengine.com"
  zone_id  = "3b6f54c1b3b5db42cc518819a7b65bed"
}