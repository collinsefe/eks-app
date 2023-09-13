terraform {
  backend "s3" {
    bucket = "collinsorighose-tf-state"
    key    = "training/eks/techbeat"
    region = "eu-west-2"
  }
}
