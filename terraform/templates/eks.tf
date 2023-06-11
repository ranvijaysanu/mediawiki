#module "key_pair" {
#  source = "terraform-aws-modules/key-pair/aws"

#  key_name   = "my_public_key"
#  public_key = local.ec2_creds.my_public_key

  
#}

#data "aws_secretsmanager_secret_version" "creds" {
#  secret_id = "my_public_key"
#}

#locals {
#  ec2_creds = jsondecode(data.aws_secretsmanager_secret_version.creds.secret_string)
#}


module "eks" {
  source  = "terraform-aws-modules/eks/aws"

  cluster_name    = var.cluster_name
  cluster_version = "1.22"

  cluster_endpoint_public_access  = true

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  enable_irsa = true

  eks_managed_node_group_defaults = {
    disk_size = 50
    key_name = module.key_pair.key_pair_name
  }

  eks_managed_node_groups = var.nodegroup_config


}

