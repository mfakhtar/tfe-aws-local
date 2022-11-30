variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable instance_type {
  default = "t2.micro"
}

variable vpc_cidr {
 default = "10.0.0.0/24"
} 

variable ami_amz {
  default = "ami-01216e7612243e0ef"
}

variable root_block_disk_size {
  default = "20"
}

variable "existing_zone" {
  
}

variable "env_name" {
  
}