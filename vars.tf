variable "cluster-name" {
  default = "myapp-eks-cluster"
  type    = string
}

variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "AWS_PROFILE" {
  default = "bravo"
}

variable "AWS_REGION" {
  default = "eu-west-2"
}


