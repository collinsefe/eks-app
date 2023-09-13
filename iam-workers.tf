resource "aws_iam_role" "myapp_node" {
  name = "myapp-eks-node"

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY

}

resource "aws_iam_role_policy_attachment" "myapp-node-AmazonEKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role = aws_iam_role.myapp_cluster.name
}

resource "aws_iam_role_policy_attachment" "myapp-node-AmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role = aws_iam_role.myapp_node.name
}

resource "aws_iam_role_policy_attachment" "myapp-node-AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role = aws_iam_role.myapp_node.name
}

resource "aws_iam_role_policy_attachment" "demo-node-AmazonSSMManagedInstanceCore" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  role = aws_iam_role.myapp_node.name
}

resource "aws_iam_instance_profile" "myapp_node" {
  name = "myapp-eks-demo"
  role = aws_iam_role.myapp_node.name
}

