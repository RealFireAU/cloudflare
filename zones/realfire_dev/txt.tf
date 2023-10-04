resource "cloudflare_record" "dmarc" {
  name    = "_dmarc"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=DMARC1; p=none; rua=mailto:ff4768cb423949e0a9d90970a8d26752@dmarc-reports.cloudflare.net"
  zone_id = "3b6f54c1b3b5db42cc518819a7b65bed"
}

resource "cloudflare_record" "spf" {
  name    = "realfire.dev"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=spf1 include:spf.messagingengine.com ?all"
  zone_id = "3b6f54c1b3b5db42cc518819a7b65bed"
}
