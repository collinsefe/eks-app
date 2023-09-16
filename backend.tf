terraform {
  backend "s3" {
    bucket = "collinsorighose-tf-state"
    key    = "training/eks/myapp"
    profile = "bravo"
    region = "eu-west-2"
  }
}

