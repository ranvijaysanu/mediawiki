nodegroup_config =  {
  application-nodegroup = {
      desired_size = 1
      min_size     = 1
      max_size     = 2

      labels = {
        role = "application"
      }

      instance_types = ["t3.small"]
      capacity_type  = "ON_DEMAND"
    }
}

cluster_name = "mediawiki-eks-cluster"
cidr = "10.0.0.0/16"
azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
