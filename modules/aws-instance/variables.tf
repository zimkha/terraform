variable "instance_type" {
  type        = string                     # The type of the variable, in this case a string
  default     = "t3.micro"                 # Default value for the variable
  description = "The type of EC2 instance" # Description of what this variable represents
}

variable "instance_count" {
  description = "Number of EC2 instances to deploy"
  type        = number
  default     = 1
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