output zone_id {
  value       = module.hosted_zone.zone_id
  description = "The Hosted Zone ID"
}

output name_servers {
  value       = module.hosted_zone.name_servers
  description = "A list of name servers in associated delegation set"
}
