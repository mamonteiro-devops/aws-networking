# AWS Route53 Hosted Zone Terraform module
Terraform module which create a AWS Route53 Hosted Public or Private Zone.

## Terraform versions

Terraform 0.12

## Usage

```hcl
module "public_hosted_zone" {
  source  = "brunordias/route53-zone/aws"
  version = "~> 1.0.0"

  domain      = "example.com"
  description = "Created by Terraform module example"
  tags = {
    environment = "development"
  }
}

module "private_hosted_zone" {
  source  = "brunordias/route53-zone/aws"
  version = "~> 1.0.0"

  domain      = "example.com"
  description = "Created by Terraform module example"
  private_zone = {
    vpc_id     = "EXAMPLEID"
    vpc_region = "us-east-2"
  }
  tags = {
    environment = "development"
  }
}
```

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.67 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| description | The description for the hosted zone. Defaults to 'Managed by Terraform' | `string` | `null` | no |
| domain | The domain name of the hosted zone | `string` | n/a | yes |
| private\_zone | A mapping to associate a VPC | `map` | `null` | no |
| tags | A map of tags to assign to the zone | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| name\_servers | A list of name servers in associated delegation set |
| zone\_id | The Hosted Zone ID |

## Authors

Module managed by [Bruno Dias](https://github.com/brunordias).

## License

Apache 2 Licensed. See LICENSE for full details.