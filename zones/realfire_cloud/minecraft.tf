resource "cloudflare_record" "mc-a" {
  proxied = false
  name    = "goobers"
  type    = "A"
  value   = "135.148.11.106"
  zone_id = "1f019c7820ff055bf1009958be12488a"
}

resource "cloudflare_record" "mc-srv" {
  name = "_minecraft._tcp.goobers.realfire.cloud"
  type = "SRV"
  data {
    weight   = 0
    priority = 0
    port     = 25574
    proto    = "_tcp"
    service  = "_minecraft"
    name     = "goobers.realfire.cloud"
    target   = "goobers.realfire.cloud"
  }
  zone_id = "1f019c7820ff055bf1009958be12488a"
}

resource "cloudflare_record" "mc2-a" {
  proxied = false
  name    = "goobersofoz"
  type    = "A"
  value   = "13.211.139.119"
  zone_id = "1f019c7820ff055bf1009958be12488a"
}

resource "cloudflare_record" "mc2-srv" {
  name = "_minecraft._tcp.goobersofoz.realfire.cloud"
  type = "SRV"
  data {
    weight   = 0
    priority = 0
    port     = 25574
    proto    = "_tcp"
    service  = "_minecraft"
    name     = "goobersofoz.realfire.cloud"
    target   = "goobersofoz.realfire.cloud"
  }
  zone_id = "1f019c7820ff055bf1009958be12488a"
}
