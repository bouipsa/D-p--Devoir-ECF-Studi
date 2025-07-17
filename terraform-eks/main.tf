module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.8.5"

  cluster_name    = var.cluster_name
  cluster_version = "1.28"

  vpc_id     = "vpc-0b1531e023fe09e5b"
  subnet_ids = [
    "subnet-04b42fbf69adc0fd6",
    "subnet-08c3e02b66807cd55"
  ]

  eks_managed_node_groups = {
    default = {
      instance_types = ["t3.medium"]
      desired_size   = 2
      min_size       = 1
      max_size       = 3
    }
  }

  # ❌ ENLÈVE cette ligne
  # enable_cluster_creator_admin_permissions = true

  # ✅ Garde les accès publics activés tant que tu testes
  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true

  tags = {
    Environment = "dev"
    Project     = "infoline"
  }
}
