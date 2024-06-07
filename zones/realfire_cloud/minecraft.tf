resource "cloudflare_record" "mc-a" {
  proxied = false
  name    = "goobers"
  type    = "A"
  value   = "135.148.11.106"
  zone_id = "1f019c7820ff055bf1009958be12488a"
}

resource "cloudflare_record" "mc-srv" {
  name = "_minecraft._tcp.goobers"
  type = "SRV"
  data {
    weight   = 0
    priority = 0
    port     = 25574
    target   = "goobers.realfire.cloud"
  }
  zone_id = "1f019c7820ff055bf1009958be12488a"
}