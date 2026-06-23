# 🧪 Laboratório de Terraform — Rodrigo Morais

Repositório de estudo e prática de **Infraestrutura como Código (IaC)** usando Terraform / OpenTofu.
Focado no que realmente é usado no mercado, com exemplos funcionais e seguros.

---

## 📋 O que tem aqui
- Conceitos práticos de IaC
- Códigos prontos para testar na AWS Free Tier
- Separação de ambientes (dev, homologação, produção)
- Boas práticas de segurança e organização
- Exemplos de recursos: VPC, Subnets, S3, IAM, etc.

---

## ⚙️ Ambiente recomendado
- **GitHub Codespaces**: sem instalação, roda direto no navegador
- **Terraform**: versão ≥ 1.9.x
- **AWS**: conta Free Tier (sem custo com uso controlado)

---

## 🚀 Fluxo de trabalho padrão
```bash
# Prepara o projeto e baixa os provedores
terraform init

# Formata e valida o código
terraform fmt
terraform validate

# Mostra o que vai ser criado/alterado/excluído
terraform plan

# Executa a criação da infraestrutura
terraform apply

# Remove tudo quando terminar os testes
terraform destroy
