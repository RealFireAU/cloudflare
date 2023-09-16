resource "cloudflare_record" "terraform_managed_resource_edc1472a0262c4b18110a68391c6a080" {
  name    = "realfire.link"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "realfire-link.pages.dev"
  zone_id = "f7a07579238fd03a63a913567d89d369"
}

resource "cloudflare_record" "terraform_managed_resource_04ef8770273f24a074905cf94aa0eb81" {
  name    = "_dmarc"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s;"
  zone_id = "f7a07579238fd03a63a913567d89d369"
}

resource "cloudflare_record" "terraform_managed_resource_4f093e0e15b521612f05d72708c92968" {
  name    = "*._domainkey"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=DKIM1; p="
  zone_id = "f7a07579238fd03a63a913567d89d369"
}

resource "cloudflare_record" "terraform_managed_resource_2726bfcb3d4468cd0087c2a57d005f6c" {
  name    = "realfire.link"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=spf1 -all"
  zone_id = "f7a07579238fd03a63a913567d89d369"
}

