resource "aws_route53_zone" "this" {
  name    = var.domain
  comment = var.description

  dynamic "vpc" {
    for_each = var.private_zone != null ? [1] : []

    content {
      vpc_id     = var.private_zone.vpc_id
      vpc_region = var.private_zone.vpc_region
    }
  }

  tags = var.tags
}
