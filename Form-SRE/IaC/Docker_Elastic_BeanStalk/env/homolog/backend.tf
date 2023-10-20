terraform {
  backend "s3" {
    bucket = "terraform-state-jx"
    key    = "homolog/terraform.tfstate"
    region = "us-west-2"
  }
}