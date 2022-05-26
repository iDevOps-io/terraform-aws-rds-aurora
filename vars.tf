variable "allocated_storage" {
  description = "The allocated storage in gigabytes"
  type        = string
  default     = "10"
}

variable "engine" {
  description = "The database engine to use"
  type        = string
  default     = "mysql"
}

variable "engine_version" {
  description = "The engine version to use"
  type        = string
  default     = "5.7"
}

variable "skip_final_snapshot" {
  description = "Determines whether a final DB snapshot is created before the DB instance is deleted. If true is specified, no DBSnapshot is created. If false is specified, a DB snapshot is created before the DB instance is deleted"
  type        = bool
  default     = true
}

variable "instance_class" {
  description = "The instance type of the RDS instance"
  type        = string
  default     = "db.t3.micro"
}

variable "name" {
  description = "The DB name to create. If omitted, no database is created initially"
  type        = string
  default     = "mydb"
}

variable "username" {
  description = "Username for the master DB user"
  type        = string
  default     = "foo"
}

variable "password" {
  description = "Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file"
  type        = string
  default     = "foobarbaz"
}

variable "db_subnet_group_name" {
  description = "Name of DB subnet group. DB instance will be created in the VPC associated with the DB subnet group. If unspecified, will be created in the default VPC"
  type        = string
  default     = "default-vpc-0ee99a919204e32af"
}

variable "parameter_group_name" {
  description = "Name of the DB parameter group to associate or create"
  type        = string
  default     = "default.mysql5.7"
}