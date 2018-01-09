//--------------------------------------------------------------------
// Modules
module "ec2" {
  source  = "teddy-ptfe.hashidemos.io/TeddyPTFEDemo/ec2/aws"
  version = "1.1.0"

  ami = "ami-aa2ea6d0"
  instance_type = "t2.micro"
  name = "pmr-test-ec2"
  subnet_id = "subnet-1cf66233"
  vpc_security_group_ids = ["sg-5067c224"]
}
