output "instance_ids" {
  description = "IDs of EC2 instances"
  value       = aws_instance.app[*].id
}

output "instance_public_ips" {
  description = "Public IPs of EC2 instances"
  value       = aws_instance.app[*].public_ip
}

output "instance_private_ips" {
  description = "Private IPs of EC2 instances"
  value       = aws_instance.app[*].private_ip
}

output "instance_ami" {
  description = "AMI ID used for the EC2 instances"
  value       = data.aws_ami.amazon_linux.id
}

output "instance_type" {
  description = "Type of EC2 instances"
  value       = var.instance_type
}

output "instance_count" {
  description = "Number of EC2 instances deployed"
  value       = var.instance_count
}

output "subnet_ids" {
  description = "Subnet IDs used for the EC2 instances"
  value       = var.subnet_ids
}

output "security_group_ids" {
  description = "Security Group IDs associated with the EC2 instances"
  value       = var.security_group_ids
}

output "ec2_instance_tags" {
  description = "Tags assigned to the EC2 instances"
  value       = var.ec2_instance_tags
}

output "formatted_instance_info" {
  description = "Formatted information of EC2 instances"
  value = join(", ", [
    for idx, instance in aws_instance.app :
    "Instance ${idx + 1}: ID=${instance.id}, Public IP=${instance.public_ip}, Private IP=${instance.private_ip}"
  ])
}