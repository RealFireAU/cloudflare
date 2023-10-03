resource "cloudflare_record" "fastmail-dkim1" {
  name    = "fm1._domainkey"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "fm1.protectedpii.com.dkim.fmhosted.com"
  zone_id = "25d563c95e0021b9a4f2475d2d470a9e"
}

resource "cloudflare_record" "fastmail-dkim2" {
  name    = "fm2._domainkey"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "fm2.protectedpii.com.dkim.fmhosted.com"
  zone_id = "25d563c95e0021b9a4f2475d2d470a9e"
}

resource "cloudflare_record" "fastmail-dkim3" {
  name    = "fm3._domainkey"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "fm3.protectedpii.com.dkim.fmhosted.com"
  zone_id = "25d563c95e0021b9a4f2475d2d470a9e"
}