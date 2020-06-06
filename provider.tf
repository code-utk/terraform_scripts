provider "aws" {
 region  = var.aws_region
 profile = var.aws_profile
}
resource "aws_instance" "instance" {
  count           = var.num
  ami             = var.ami
  instance_type   = var.inst_type
  key_name        = ""
  security_groups = [ "" ]

 lifecycle {
     create_before_destroy = false
  }

  tags = {
    Name = "Webserver"
  }
}
