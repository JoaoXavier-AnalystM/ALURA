module "Producao" {
  source = "../../Infra"

  nome_repositorio = "producao"
  cargoIAM = "Producao"
  ambiente = "Producao"
}

output "IP_alb" {
  value = module.Producao.IP
}