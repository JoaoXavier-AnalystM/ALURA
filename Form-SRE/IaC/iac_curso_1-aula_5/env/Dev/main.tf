module "aws-devtest" {
    source = "../../infra"
    instance_type = "t2.micro"
    region_aws = "us-west-2"
    chave = "IaC-DEV"
}