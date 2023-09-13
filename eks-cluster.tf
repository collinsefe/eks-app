resource "aws_eks_cluster" "myapp_cluster" {
  name     = var.cluster-name
  role_arn = aws_iam_role.myapp_cluster.arn

  vpc_config {
    security_group_ids = [aws_security_group.myapp_cluster.id]
    subnet_ids = module.vpc.public_subnets
  }

  depends_on = [
    aws_iam_role_policy_attachment.myapp_cluster_AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.myapp_cluster_AmazonEKSServicePolicy
  ]
}

