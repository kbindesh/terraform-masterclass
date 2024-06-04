# Input Variables
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "us-east-1"
}

variable "ec2_ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-0915bcb5fa77e4892" # Amazon Linux 2 AMI ID
}

variable "ec2_instance_count" {
  description = "Count of EC2 instances to be created"
  type        = number
  default     = 1
}
