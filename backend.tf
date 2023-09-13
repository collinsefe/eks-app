terraform {
  backend "s3" {
    bucket = "bucketName"
    key    = "folderPath/eks/myapp"
    profile = "bravo"
    region = "eu-west-2"
  }
}
