provider "aws" {
  region  = "ap-souh-1"
  profile = "myaashi"
}

resource "aws_instance"  "myin" {
  ami             =  "ami-id here"
  instance_type   =  "t2.micro"
  keyname         =  "mykey123"
  security_group  =  ["launch-wizard-1"]

  tags = {
    Name = "MyOS1"
  }
}

