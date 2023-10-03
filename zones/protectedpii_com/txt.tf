resource "cloudflare_record" "dmarc" {
  name    = "_dmarc"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=DMARC1; p=reject; rua=mailto:b1d3bfc8a5674eb1bee637ed997e68a0@dmarc-reports.cloudflare.net"
  zone_id = "25d563c95e0021b9a4f2475d2d470a9e"
}

resource "cloudflare_record" "spf" {
  name    = "protectedpii.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=spf1 include:spf.messagingengine.com ?all"
  zone_id = "25d563c95e0021b9a4f2475d2d470a9e"
}