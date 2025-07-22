module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.37.1"
  cluster_name = local.cluster_name
  cluster_version = var.kubernetes_version
  subnet_ids = module.vpc.private_subnets

  enable_irsa = true

  tags = {
    cluster = "demo"
  }

  vpc_id = module.vpc.vpc_id

  eks_managed_node_group_defaults = {
    ami_type               = "AL2_x86_64"
    instance_type          = "t3.medium"
    vpc_security_group_ids = [aws_security_group.all_workers.id]
  }

  eks_managed_node_groups = {
    node_group = {
      desired_capacity = 2
      max_capacity     = 6
      min_capacity     = 2
    }
  }
}
