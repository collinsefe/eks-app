terraform {
  backend "s3" {
    bucket = "collinsorighose-tf-state"
    key    = "training/eks/myapp"
    region = "eu-west-2"
  }
}

