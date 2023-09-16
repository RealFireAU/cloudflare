resource "cloudflare_record" "terraform_managed_resource_d48979982bf0ad0d5be5e2c9e6cb6220" {
  name    = "jellyfin"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "d1618afa-9e9d-4b7f-9288-7b8cf2e25a49.cfargotunnel.com"
  zone_id = "fc42edd047c0e37cb551da3fac654265"
}

resource "cloudflare_record" "terraform_managed_resource_fe8df75f03f61295e0eb9dc36661b090" {
  name    = "plex"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "d1618afa-9e9d-4b7f-9288-7b8cf2e25a49.cfargotunnel.com"
  zone_id = "fc42edd047c0e37cb551da3fac654265"
}

