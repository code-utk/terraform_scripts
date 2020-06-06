variable "aws_region" { 
  default = "us-east-1"
}

variable "num" {}

variable "aws_profile" {
  default = "superhero"
}

variable "inst_type" {
  default = "t2.micro"
}

variable "ami" {
  default = "ami-085925f297f89fce1"
}
