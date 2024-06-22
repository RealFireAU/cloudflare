# No records on this domain at this time.

resource "cloudflare_record" "mc2-a" {
  proxied = false
  name    = "goobers"
  type    = "A"
  value   = "103.1.215.21"
  zone_id = "fc42edd047c0e37cb551da3fac654265"
}

resource "cloudflare_record" "mc2-srv" {
  name = "_minecraft._tcp.goobers.realfire.network"
  type = "SRV"
  data {
    weight   = 0
    priority = 0
    port     = 25565
    proto    = "_tcp"
    service  = "_minecraft"
    name     = "goobers.realfire.network"
    target   = "goobers.realfire.network"
  }
  zone_id = "fc42edd047c0e37cb551da3fac654265"
}
