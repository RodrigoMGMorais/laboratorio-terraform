terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

# Gera um código aleatório único
resource "random_string" "identificador" {
  length  = 6
  special = false
  upper   = false
  numeric = true  # ← trocamos aqui, forma nova
}

# Cria um arquivo físico na pasta
resource "local_file" "documento_teste" {
  content  = "✅ Meu primeiro teste com Terraform! Código gerado: ${random_string.identificador.result}"
  filename = "./meu_arquivo_teste.txt"
}

# Mostra os resultados na tela
output "codigo_gerado" {
  value = random_string.identificador.result
}

output "caminho_do_arquivo" {
  value = path.module
}