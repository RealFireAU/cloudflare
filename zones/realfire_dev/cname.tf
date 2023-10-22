resource "cloudflare_record" "fastmail-dkim1" {
  name    = "fm1._domainkey"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "fm1.realfire.dev.dkim.fmhosted.com"
  zone_id = "3b6f54c1b3b5db42cc518819a7b65bed"
}

resource "cloudflare_record" "fastmail-dkim2" {
  name    = "fm2._domainkey"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "fm2.realfire.dev.dkim.fmhosted.com"
  zone_id = "3b6f54c1b3b5db42cc518819a7b65bed"
}

resource "cloudflare_record" "fastmail-dkim3" {
  name    = "fm3._domainkey"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "fm3.realfire.dev.dkim.fmhosted.com"
  zone_id = "3b6f54c1b3b5db42cc518819a7b65bed"
}

resource "cloudflare_record" "homepage" {
  name    = "@"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "realfire.pages.dev"
  zone_id = "3b6f54c1b3b5db42cc518819a7b65bed"
}
