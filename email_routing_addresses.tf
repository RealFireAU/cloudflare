variable "cloudflare_email_catch_all_address" {
  type        = string
  description = "value of the email address to forward to hidden behind a variable"
}

resource "cloudflare_email_routing_address" "primary" {
  account_id = "1d7d6183d5d2ed67e5bc93e444e4113e"
  email      = var.cloudflare_email_catch_all_address
}