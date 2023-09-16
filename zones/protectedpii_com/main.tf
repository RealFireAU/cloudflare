terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

# Below we're renaming the resources this can be removed once this commit is merged:
# Purposely not using the `state mv` command as it shouldn't be done locally
moved {
  from = cloudflare_record.terraform_managed_resource_75f72bfc70ca2cb77a14324603d89793
  to   = cloudflare_record.spf
}

moved {
  from = cloudflare_record.terraform_managed_resource_dddea226ef92db2c65f2ea2c8e01d0f5
  to   = cloudflare_record.dmarc
}

moved {
  from = cloudflare_record.terraform_managed_resource_a56093eb8b51f6c19093d14a5806be87
  to   = cloudflare_record.mx
}

moved {
  from = cloudflare_record.terraform_managed_resource_883ca8a7d6e71546e85880cea87f3cd6
  to   = cloudflare_record.mx2
}

moved {
  from = cloudflare_record.terraform_managed_resource_a80a816ed0424ab0619f3cf4f7ac427e
  to   = cloudflare_record.mx3
}
