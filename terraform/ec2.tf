resource "aws_instance" "ana" {
  ami             = "ami-083654bd07b5da81d"
  instance_type   = "t2.micro"
  security_groups = ["launch-wizard-1"]
  tags = {
    Name = "ana_instance"
  }
}