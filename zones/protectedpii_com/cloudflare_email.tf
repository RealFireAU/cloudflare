variable "cloudflare_email_catch_all_address" {
  type = list(string)
}

resource "cloudflare_email_routing_settings" "email_settings" {
  zone_id = "25d563c95e0021b9a4f2475d2d470a9e"
  enabled = true
}

resource "cloudflare_email_routing_catch_all" "catch_all" {
  zone_id = "25d563c95e0021b9a4f2475d2d470a9e"
  name    = "protectedpii.com catch_all"
  enabled = true

  matcher {
    type = "all"
  }

  action {
    type  = "forward"
    value = var.cloudflare_email_catch_all_address
  }
}