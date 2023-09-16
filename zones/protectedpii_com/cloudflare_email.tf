resource "cloudflare_email_routing_settings" "email_settings" {
  zone_id = "25d563c95e0021b9a4f2475d2d470a9e"
  enabled = true
}

resource "cloudflare_email_routing_address" "primary" {
  account_id = "1d7d6183d5d2ed67e5bc93e444e4113e"
  email      = "martin@hylandnet.works"
}

resource "cloudflare_email_routing_catch_all" "catch-all" {
  zone_id = "25d563c95e0021b9a4f2475d2d470a9e"
  name    = "protectedpii.com catch-all"
  enabled = true

  matcher {
    type = "all"
  }

  action {
    type  = "forward"
    value = [cloudflare_email_routing_address.primary.email]
  }
}