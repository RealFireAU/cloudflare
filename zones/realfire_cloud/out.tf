resource "cloudflare_record" "terraform_managed_resource_5c5abc0fdccae3cbb41c7396281f3aba" {
  name    = "_dmarc"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s;"
  zone_id = "1f019c7820ff055bf1009958be12488a"
}

resource "cloudflare_record" "terraform_managed_resource_6910f22baeb25b9122f798ffc168ad21" {
  name    = "*._domainkey"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=DKIM1; p="
  zone_id = "1f019c7820ff055bf1009958be12488a"
}

resource "cloudflare_record" "terraform_managed_resource_b2c5dd3a2faeda844cfceeff25f5c827" {
  name    = "realfire.cloud"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=spf1 -all"
  zone_id = "1f019c7820ff055bf1009958be12488a"
}

resource "cloudflare_record" "terraform_managed_resource_1b00ada15f8487843dc8e90f51defc59" {
  name    = "tf"
  proxied = true
  ttl     = 1
  type    = "AAAA"
  value   = "100::"
  zone_id = "1f019c7820ff055bf1009958be12488a"
}

resource "cloudflare_record" "minceaft-server" {
  name    = "mc"
  proxied = false
  ttl     = 1
  type    = "A"
  value   = "148.113.5.230"
  zone_id = "1f019c7820ff055bf1009958be12488a"
}