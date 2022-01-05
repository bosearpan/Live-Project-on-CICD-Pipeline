module "ec2_bastion" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.17.0"

  name = "BastionHost"

  ami                    = "ami-09e67e426f25ce0d7"
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  vpc_security_group_ids = [module.public_bastion_sg.this_security_group_id]
  monitoring             = true
  subnet_id              = module.vpc.public_subnets[0]

  tags = {
    Terraform   = "true"
    Environment = "project"
  }
}
