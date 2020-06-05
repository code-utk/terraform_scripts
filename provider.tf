provider "aws" {
 region  = var.aws_region
 profile = var.aws_profile
}
resource "aws_instance" "instance" {
  count           = var.num
  ami             = var.ami
  instance_type   = var.inst_type
  key_name        = "Ubuntu key pair"
  security_groups = [ "SSH n jenkins" ]

 lifecycle {
     create_before_destroy = false
  }

  tags = {
    Name = "Webserver"
  }
}
