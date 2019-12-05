variable "access_key" {
  description = "AWS access key"
}

variable "secret_key" {
  description = "AWS secret access key"
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

/* Ubuntu bionic 18.04 AMIs by region */
variable "amis" {
  description = "Base AMI to launch the instances with"
  default = {
    us-gov-east-1 = "ami-73db3802"
    us-gov-west-1 = "ami-99f6aaf8"
    us-west-2 = "ami-0a7d051a1c4b54f65"
    us-west-1 = "ami-0f42d8c4eb586ccf7"
    us-east-2 = "ami-059d836af932792c3"
    us-east-1 = "ami-00a208c7cdba991ea"
    sa-east-1 = "ami-049f5d88d2d436431"
    me-south-1 = "ami-026d8603b92fddf7a"
    eu-west-3 = "ami-0b70d1460d5c7a299"
    eu-west-2 = "ami-00622b440d92e55c0"
    eu-west-1 = "ami-04c58523038d79132"
    eu-north-1 = "ami-005bc7d72deb72a3d"
    eu-central-1 = "ami-09356619876445425"
    ca-central-1 = "ami-0972a0d3135cf1fc0"
    ap-southeast-2 = "ami-04a0f7552cff370ba"
    ap-southeast-1 = "ami-07febfdfb4080320e"
    ap-south-1 = "ami-0245841fc4b40e22f"
    ap-northeast-3 = "ami-05f50017c0424c060"
    ap-northeast-2 = "ami-02b4a5559ce53a570"
    ap-northeast-1 = "ami-0f6b4f4104d26f399"
    ap-east-1 = "ami-dc98e2ad"
  }
}
