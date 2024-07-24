# Terraform Infrastructure as Code (IaC) - digitalocean cdn Module

## Table of Contents
- [Introduction](#introduction)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [Authors](#authors)
- [License](#license)

## Introduction
This Terraform module creates structured cdn for digitalocean resources with specific attributes.

## Usage

- Use the module by referencing its source and providing the required variables.
Example:Basic
```hcl
module "CDN" {
  source = "git::https://github.com/yadavprakash/terraform-digitalocean-cdn.git?ref=v1.0.0"
  origin = module.spaces.bucket_domain_name
  ttl    = 3600
}

```
Example:complete
```hcl
module "CDN" {
  source           = "git::https://github.com/yadavprakash/terraform-digitalocean-cdn.git?ref=v1.0.0"
  origin           = module.spaces.bucket_domain_name
  ttl              = 3600
  custom_domain    = null
  certificate_name = null

}

```

Please ensure you specify the correct 'source' path for the module.

## Module Inputs

- `certificate_name`: The unique name of a DigitalOcean managed TLS certificate used for SSL when a custom subdomain is provided.
- `origin`: The fully qualified domain name, (FQDN) for a Space.
- `ttl`: The time to live for the CDN Endpoint, in seconds. Default is 3600 seconds.
- `enabled`: Flag to control the resources creation.


## Module Outputs
- This module currently does not provide any outputs.

# Examples:Basic
For detailed examples on how to use this module, please refer to the '[example](https://github.com/yadavprakash/terraform-digitalocean-cdn/tree/master/_example/basic)' directory within this repository.
# Examples:complete
For detailed examples on how to use this module, please refer to the '[example](https://github.com/yadavprakash/terraform-digitalocean-cdn/tree/master/_example/completes)' directory within this repository.

## Authors
Your Name
Replace '[License Name]' and '[Your Name]' with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.

## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/yadavprakash/terraform-digitalocean-cdn/blob/master/LICENSE) file for details.



<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.7.3 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | >= 2.34.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | >= 2.34.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_cdn.main](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/cdn) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_certificate_name"></a> [certificate\_name](#input\_certificate\_name) | The unique name of a DigitalOcean managed TLS certificate used for SSL when a custom subdomain is provided. | `string` | `null` | no |
| <a name="input_custom_domain"></a> [custom\_domain](#input\_custom\_domain) | The fully qualified domain name (FQDN) of the custom subdomain used with the CDN Endpoint. | `string` | `""` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Flag to control the resources creation. | `bool` | `true` | no |
| <a name="input_origin"></a> [origin](#input\_origin) | The fully qualified domain name, (FQDN) for a Space. | `string` | `""` | no |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | The time to live for the CDN Endpoint, in seconds. Default is 3600 seconds. | `number` | `3600` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
<!-- END_TF_DOCS -->