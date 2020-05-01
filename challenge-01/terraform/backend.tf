terraform {
  backend "s3" {
    bucket = "terraform-challenge01"
    key    = "terraform.tfstate"
    region = "us-west-1"
  }
}