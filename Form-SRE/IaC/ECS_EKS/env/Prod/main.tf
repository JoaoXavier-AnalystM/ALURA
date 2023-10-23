module "Producao" {
  source = "../../Infra"

  nome_repositorio = "producao"
  cluster_name     = "producao"
}
