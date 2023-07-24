provider "aws" {
  region = "us-east-2"
}

data "aws_vpc" "default" {
  default = true
}

module "private_hosted_zone" {
  source      = "../../"
  domain      = "example.com"
  description = "Created by Terraform module example"
  private_zone = {
    vpc_id     = data.aws_vpc.default.id
    vpc_region = "us-east-2"
  }
  tags = {
    environment = "development"
  }
}
