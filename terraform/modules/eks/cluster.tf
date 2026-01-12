resource "aws_eks_cluster" "eks-cluster" {
  name     = "eks-cluster"
  role_arn = aws_iam_role.EKSClusterRole.arn
  version  = "1.34"


vpc_config {
    subnet_ids          = flatten([ var.public_subnet, var.private_subnet ])
    security_group_ids  = flatten([var.security_groups_id])
  }

depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSClusterPolicy
  ]

}


resource "aws_iam_openid_connect_provider" "cluster" {
  client_id_list  = ["sts.amazonaws.com"]
  thumbprint_list = []
  url             = aws_eks_cluster.eks-cluster.identity[0].oidc[0].issuer
}