# Laboratório de Estudo do Terraform

Este projeto foi criado para aprender o fluxo completo do Terraform, sem necessidade de conta em nuvem.

## O que foi feito
- Instalação do Terraform no ambiente Codespaces
- Estrutura do código: provedores, recursos e saídas
- Execução de todos os comandos principais:
  - `terraform init` → Prepara o ambiente
  - `terraform validate` → Verifica erros
  - `terraform plan` → Mostra o que será feito
  - `terraform apply` → Executa a criação
  - `terraform destroy` → Remove tudo o que foi criado

## Recursos usados
- `random_string`: Gera um código único
- `local_file`: Cria um arquivo de texto na pasta do projeto

## Código final
```hcl
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

resource "random_string" "identificador" {
  length  = 6
  special = false
  upper   = false
  numeric = true
}

resource "local_file" "documento_teste" {
  content  = "✅ Meu primeiro teste com Terraform! Código gerado: ${random_string.identificador.result}"
  filename = "./meu_arquivo_teste.txt"
}

output "codigo_gerado" {
  value = random_string.identificador.result
}

output "caminho_do_arquivo" {
  value = path.module
}


---

## 🎓 Resumo final do que você aprendeu hoje
Você fez todo o fluxo profissional, exatamente igual ao usado no mercado:
✅ Instalou e configurou o Terraform
✅ Entendeu a estrutura do código
✅ Aprendeu o que cada comando faz
✅ Viu como o Terraform controla o que foi criado
✅ Aprendeu a diferença entre testes locais e recursos em nuvem

Gratidão!!!
