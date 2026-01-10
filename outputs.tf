
output "public_dns_name" {
  description = "Public DNS names of the load balancer for this project"
  value       = module.elb_http.elb_dns_name
}

output "vpc_id" {
  description = "ID du vpc"
  value =  module.vpc.vpc_id
}

// Donner le url de notre load balancer
output "elb_url" {
  description = "url for our elb"
  value = "http://${module.elb_http.elb_dns_name}"
}

// Le nombre d'instances attaché a notre load balancer

output "web_server_count" {
  description = "Number of instance ec2 attached on our elb"
  value       = length(module.ec2_instances.instance_ids)
}