//--------------------------------------------------------------------
// Variables
variable "rds_password" {}
variable "rds_username" {}

//--------------------------------------------------------------------
// Modules
module "rds" {
  source  = "teddy-ptfe.hashidemos.io/teddy-ptfe-demo/rds/aws"
  version = "1.6.0"

  allocated_storage = 5
  backup_window = "03:00-06:00"
  engine = "mysql"
  engine_version = "5.7.19"
  identifier = "demodb"
  instance_class = "db.t2.large"
  maintenance_window = "Mon:00:00-Mon:03:00"
  name = "testdb"
  password = "${var.rds_password}"
  port = 3306
  username = "${var.rds_username}"
}
