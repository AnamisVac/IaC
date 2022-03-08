resource "aws_db_instance" "default" {
  allocated_storage   = 10
  engine              = "mysql"
  engine_version      = "5.7"
  instance_class      = "db.t2.micro"
  identifier          = "ana-db"
  name                = "dbanam1"
  username            = "root"
  password            = "root12345"
  skip_final_snapshot = true
}