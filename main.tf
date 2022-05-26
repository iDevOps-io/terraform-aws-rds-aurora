provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket         = "idevops-terraform-backend"
    key            = "global/s3/eks.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform_state_locking"
    encrypt        = true
  }
}

resource "aws_db_instance" "RDS" {
  allocated_storage    = var.allocated_storage
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  name                 = var.name
  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot  = var.skip_final_snapshot
  db_subnet_group_name = var.db_subnet_group_name


  tags = {
    Name = "AaronWilliams"
  }
} 