variable "identifier" {
  description = "A name to identify the RDS instance"
  default     = "cs-v2-infra-rds-db"
}

variable "engine" {
  description = "The name of the database engine to be used for the RDS instance"
  default     = "mysql"
}

variable "engine_version" {
  description = "The version number of the database engine to be used for the RDS instance"
  default     = "8.0.35"
}

variable "instance_class" {
  description = "The instance class of the RDS instance"
  default     = "db.t4g.medium"
}

variable "allocated_storage" {
  description = "The amount of allocated storage in gibibytes"
  default     = 20
}

variable "max_allocated_storage" {
  description = "auto scaling max storage for RDS"
  default = "1000"
}

variable "db_name" {
  description = "The name of the initial database on the RDS instance"
  default     = null
}

variable "storage_type" {
  description = "storage type of the DB"
  default = "gp3"
}

variable "backup_retention_period" {
  default = "7"
}

variable "username" {
  description = "The master username for the RDS instance"
  default     = "admin"
}

variable "port" {
  description = "The port on which the DB accepts connections"
  default     = "3306"
}

variable "vpc_id" {
  description = "The ID of the VPC where the RDS instance will be created."
  default = "vpc-011f4c633f59f90bb"
}

variable "vpc_security_group_ids" {
  description = "A list of VPC security group IDs"
  type        = list(string)
  default     = ["sg-08bbfeb6b29ac1d50"]
}

variable "subnet_ids" {
  description = "A list of subnet IDs"
  type        = list(string)
  default     = ["subnet-0e0d3d84cee0a504f", "subnet-03c825b5ea033aa1b", "subnet-0ddd0e9cf4751330a"]
}

variable "performance_insights_retention_period" {
  default = "7"
}

variable "family" {
  description = "The family of the DB parameter group"
  default     = "mysql8.0"
}

variable "major_engine_version" {
  description = "The major version of the database engine"
  default     = "8.0"
}

variable "CreatedBy" {
  default = "Surya"
}

variable "Purpose" {
  default = "DB for infra"
}

variable "env" {
  default = "infra"
}