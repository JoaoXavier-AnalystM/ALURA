terraform {
  backend "s3" {
    bucket = "terraform-state-jx"
    key    = "Prod/terraform.tfstate"
    region = "us-west-2"
  }
}
