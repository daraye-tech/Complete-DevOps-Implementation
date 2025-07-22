terraform {
  backend "s3" {
    bucket = "my-s3-bucker-dahir.com"
    key    = "terraform.tfstate"
    region = "eu-north-1"
  }
}
