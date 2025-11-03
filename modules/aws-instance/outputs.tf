output "instance_ids" {
  description = "IDs of EC2 instances"
  value       = aws_instance.app[*].id
}

output "instance_public_ips" {
  description = "Public IPs of EC2 instances"
  value       = aws_instance.app[*].public_ip
}