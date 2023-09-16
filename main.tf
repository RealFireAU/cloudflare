terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
  backend "http" {
    address        = "https://tf.realfire.cloud/api/v1/cloudflare-public"
    lock_address   = "https://tf.realfire.cloud/api/v1/cloudflare-public"
    unlock_address = "https://tf.realfire.cloud/api/v1/cloudflare-public"
  }
}

provider "cloudflare" {}

## Define zones as modules
module "protectedpii_com" {
  source                             = "./zones/protectedpii_com"
  cloudflare_email_catch_all_address = [cloudflare_email_routing_address.primary.email]
}

module "realfire_au" {
  source = "./zones/realfire_au"
}

module "realfire_cloud" {
  source = "./zones/realfire_cloud"
}

module "realfire_dev" {
  source = "./zones/realfire_dev"
}

module "realfire_link" {
  source = "./zones/realfire_link"
}

module "realfire_network" {
  source = "./zones/realfire_network"
}