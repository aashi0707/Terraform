provider "aws" {
  region = "ap-south-1"
  profile = "aashi"
}

resource "aws_instance" "web1" {
  ami           = "ami-005956c5f0f757d37"
  instance_type = "t2.micro"
  key_name      = "myamazonkey123"
  security_groups = ["launch-wizard-2"]

  tags = {
    Name = "MyOS1"
  }
}