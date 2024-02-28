terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "db" {
  source = "terraform-aws-modules/rds/aws"
  identifier = var.identifier
  engine            = var.engine
  engine_version    = var.engine_version
  instance_class    = var.instance_class
  allocated_storage = var.allocated_storage
  max_allocated_storage = var.max_allocated_storage
  storage_type = var.storage_type
  skip_final_snapshot = true
  db_name  = var.db_name
  username = var.username
  port     = var.port
  iam_database_authentication_enabled = false

  backup_retention_period = var.backup_retention_period
  copy_tags_to_snapshot   = true

  performance_insights_enabled          = true
  performance_insights_retention_period = var.performance_insights_retention_period

  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    CreatedBy = var.CreatedBy
    env = var.env
    Purpose = var.Purpose
  }

  create_db_subnet_group = true
  subnet_ids             = var.subnet_ids

  family = var.family
  major_engine_version = var.major_engine_version

  create_db_parameter_group = false
  create_db_option_group    = false

  deletion_protection = true

}