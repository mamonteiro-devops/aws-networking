provider "aws" {
  region = "us-east-2"
}

module "hosted_zone" {
  source      = "../../"
  domain      = "thisisonlyatest.com"
  description = "Created by Terraform module example"
  tags = {
    environment = "development"
  }
}
