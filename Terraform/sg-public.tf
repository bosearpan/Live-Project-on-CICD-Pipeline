module "loadbalancer_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.18.0"

  name = "loadbalancer-sg"
  description = "Allow incoming to port 80 and all egress."
  vpc_id = module.vpc.vpc_id
  # Ingress
  ingress_rules = ["all-all"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  # Egress
  egress_rules = ["all-all"]

  ingress_with_cidr_blocks = [
    {
      from_port   = 0
      to_port     = 50000
      protocol    = 6
      description = "Allow All Port"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}
