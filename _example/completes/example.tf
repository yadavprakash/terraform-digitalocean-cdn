provider "digitalocean" {

}

module "spaces" {
  source        = "git::https://github.com/yadavprakash/terraform-digitalocean-spaces.git?ref=v1.0.0"
  name          = "spaces"
  environment   = "testing"
  acl           = "private"
  force_destroy = false
  region        = "nyc3"

}


module "CDN" {
  source           = "./../../"
  origin           = module.spaces.bucket_domain_name
  ttl              = 3600
  custom_domain    = null
  certificate_name = null

}
