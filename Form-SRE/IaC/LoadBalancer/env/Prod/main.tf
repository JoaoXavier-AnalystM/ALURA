module "aws-prod" {
  source           = "../../infra"
  instancia        = "t2.micro"
  regiao_aws       = "us-west-2"
  chave            = "IaC-PRD-2"
  grupoDeSeguranca = "PRD"
  minimo           = 1
  maximo           = 10
  nomeGrupo        = "PROD"
}
