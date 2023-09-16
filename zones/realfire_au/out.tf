resource "cloudflare_record" "terraform_managed_resource_ac8ab0f6be08bcffce56effa487da6ca" {
  name     = "realfire.au"
  priority = 85
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route3.mx.cloudflare.net"
  zone_id  = "5e12b055dfc7ff5eabff20a27d7184b9"
}

resource "cloudflare_record" "terraform_managed_resource_b5500d4b699a1e57af92ba3ed030c37e" {
  name     = "realfire.au"
  priority = 2
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route2.mx.cloudflare.net"
  zone_id  = "5e12b055dfc7ff5eabff20a27d7184b9"
}

resource "cloudflare_record" "terraform_managed_resource_b007352f3aab9a5cbf1a2360333cd9e8" {
  name     = "realfire.au"
  priority = 27
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route1.mx.cloudflare.net"
  zone_id  = "5e12b055dfc7ff5eabff20a27d7184b9"
}

resource "cloudflare_record" "terraform_managed_resource_71ecf873ed39bc95ac289c5fbdd53a80" {
  name    = "realfire.au"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=spf1 include:_spf.mx.cloudflare.net ~all"
  zone_id = "5e12b055dfc7ff5eabff20a27d7184b9"
}

