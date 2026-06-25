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

## 🎓 Resumo final do que fiz hoje:
✅ Instalei e configurou o Terraform
✅ Entendi a estrutura do código
✅ Aprendi o que cada comando faz
✅ Vi como o Terraform controla o que foi criado
✅ Aprendi a diferença entre testes locais e recursos em nuvem

Gratidão!!!

---
## Adendo para teste.tf:

## Projeto: Infraestrutura como Código (IaC) no Azure
Objetivo
Este laboratório tem como objetivo a prática de provisionamento de recursos no Azure utilizando Terraform. O foco foi a implementação de boas práticas, como a parametrização de variáveis e a validação estática de código.

Estrutura do Projeto
teste.tf: Define o provedor (Azure) e a declaração dos recursos (Resource Group).

variables.tf: Define as variáveis de entrada, permitindo flexibilidade e reutilização do código.

O que foi aprendido
Automação: Uso de IaC para evitar configurações manuais no portal do Azure.

Modularização: Desacoplamento entre lógica (resource) e configuração (variables).

Qualidade: Utilização de terraform validate para análise de integridade do código antes da implementação.

Comandos Utilizados
terraform init - Inicialização do provedor.

terraform validate - Validação da sintaxe e estrutura do HCL.
---

"Dando continuidade aos estudos de IaC, hoje foquei em estruturar projetos Terraform com variáveis. O aprendizado de separar a definição dos recursos das configurações de ambiente (via variables.tf) é um passo fundamental para criar infraestruturas escaláveis e fáceis de manter. A prática em ambientes simulados e o uso de validação estática de código têm sido essenciais para evoluir nessa jornada."

"Estou estruturando meu código seguindo princípios de desacoplamento, separando definições de variáveis da declaração de recursos, o que torna a infraestrutura mais resiliente e fácil de escalar".

Fim do teste!
