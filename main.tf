//--------------------------------------------------------------------
// Modules
module "vpc" {
  source  = "teddy-ptfe.hashidemos.io/teddy-ptfe-demo/vpc/aws"
  version = "1.2.0"

  cidr = "10.11.0.0/16"
  create_database_subnet_group = "false"
  name = "teddy-pmr-test"
}
