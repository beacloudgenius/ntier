variable "access_key" {
  description = "AWS access key"
  sensitive = true
}

variable "secret_key" {
  description = "AWS secret access key"
  sensitive = true
}

variable "region" {
  description = "AWS region"
  default     = "us-west-1"
}

variable "az" {
  description = "AWS availability_zone"
  default     = "us-west-1a"
}

variable "vpc_cidr" {
  description = "CIDR for VPC"
  default     = "10.128.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for public subnet"
  default     = "10.128.0.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR for private subnet"
  default     = "10.128.1.0/24"
}

/* Ubuntu bionic 22.04 AMIs by region */
variable "amis" {
  description = "Base AMI to launch the instances with"
  default = {
    us-gov-east-1 = "ami-73db3802"
    us-gov-west-1 = "ami-99f6aaf8"
    us-west-2 = "ami-04cbd7b3c605274db"
    us-west-1 = "ami-0f4112d41eef0f9da"
    us-east-2 = "ami-046013d7a999b3f7b"
    us-east-1 = "ami-0337c8d6fb02b2dcf"
    sa-east-1 = "ami-07f4db3d4eb9621eb"
    me-south-1 = "ami-09f393bffa73f972b"
    eu-west-3 = "ami-0c8efeef9068f92b8"
    eu-west-2 = "ami-0158f0e4bab86b5e5"
    eu-west-1 = "ami-01c5e67eee4a4d068"
    eu-north-1 = "ami-0a6fa81f80b7bdb65"
    eu-central-1 = "ami-0b4d606a9b74878db"
    ca-central-1 = "ami-004c7220293168c08"
    ap-southeast-2 = "ami-0329927eceb939f9e"
    ap-southeast-1 = "ami-0f3e82d61ba3a480c"
    ap-south-1 = "ami-085277d53e3ec9578"
    ap-northeast-3 = "ami-0667599e6ecf636d0"
    ap-northeast-2 = "ami-0e58c8d9139c24c8f"
    ap-northeast-1 = "ami-01795f70d23df762e"
    ap-east-1 = "ami-0214d7476b7ed7c4a"
  }
}
