module "aws-dev" {
    source = "../../infra"
    instance_type = "t2.micro"
    region_aws = "us-west-2"
    chave = "IaC-DEV"
}

output "IP-PUBDEV" {
  value = module.aws-dev.IP-PUB
}