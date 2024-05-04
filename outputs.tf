output "vpc_id" {
  value = module.network_module.vpc_id
}

output "public_subnet_ids" {
  value = module.network_module.public_subnet_ids
}

output "rds_endpoint" {
  value = module.rds.db_instance_endpoint
}

output "alb_dns_name" {
  value = module.public_backend_app.alb_dns_name
}

output "nlb_dns_name" {
  value = module.private_backend_app.nlb_dns_name
}