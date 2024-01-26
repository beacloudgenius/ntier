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

/* Ubuntu jammy 22.04 AMIs by region */
variable "amis" {
  description = "Base AMI to launch the instances with"
  default = {
    af-south-1	=	"ami-0d046b4fc5fa35afe"
    ap-east-1	=	"ami-005f5c815f7d52f70"
    ap-northeast-1	=	"ami-0c507bac12676abde"
    ap-northeast-2	=	"ami-0146f53dcc4173b9b"
    ap-northeast-3	=	"ami-0ca2c2f62d0a8e90c"
    ap-south-1	=	"ami-00d1d69533a194191"
    ap-south-2	=	"ami-003ee491ad3d9e59e"
    ap-southeast-1	=	"ami-0f2c63fb38cd238b9"
    ap-southeast-2	=	"ami-009d0779401611280"
    ap-southeast-3	=	"ami-07e358536fd1351b9"
    ap-southeast-4	=	"ami-0bbfcda8471295b2b"
    ca-central-1	=	"ami-090a0eb43b8941c4b"
    ca-west-1	=	"ami-01019a4d5b9af1168"
    cn-north-1	=	"ami-0e3b3240bbef3fdc2"
    cn-northwest-1	=	"ami-0d3983a2535b09889"
    eu-central-1	=	"ami-04e945a5ffd095d8e"
    eu-central-2	=	"ami-02ad6d2248bd62463"
    eu-north-1	=	"ami-0c9e59ee061b40973"
    eu-south-1	=	"ami-0d7a57c64ff08d049"
    eu-south-2	=	"ami-06a199071228a2a1a"
    eu-west-1	=	"ami-0095aed963d3ed501"
    eu-west-2	=	"ami-03559713c297ec8fb"
    eu-west-3	=	"ami-006309dc998f7abfe"
    il-central-1	=	"ami-0b1718066f1418840"
    me-central-1	=	"ami-001ffa45c8c72fc90"
    me-south-1	=	"ami-038d983d83ea921e7"
    sa-east-1	=	"ami-0b7ceef61cd316691"
    us-east-1	=	"ami-04ffc9f7871904759"
    us-east-2	=	"ami-073ff8e13d826b7f8"
    us-west-1	=	"ami-033592d7e35594a4c"
    us-west-2	=	"ami-0e537d0faf7bc0031"
  }
}
