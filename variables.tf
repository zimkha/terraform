variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "The type of EC2 instance"
}

variable "subnet_ids" {
  description = "Subnet IDs for EC2 instances"
  type        = list(string)
  default     = ["subnet-0123456789abcdef0"]
}

variable "security_group_ids" {
  description = "Security group IDs for EC2 instances"
  type        = list(string)
  default     = ["sg-0123456789abcdef0"]
}

variable "tags" {
  description = "Tags for instances"
  type        = map
  default     = {}
}

variable "instance_count" {
  description = "Number of EC2 instances to deploy"
  type        = number
  default     = 1
}
variable "AWS_ACCESS_KEY_ID" {
  type      = string
  sensitive = true
}

variable "AWS_SECRET_ACCESS_KEY" {
  type      = string
  sensitive = true
}