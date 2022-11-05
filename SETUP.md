# Menyiapkan Testing Environment

Kita menggunakan *technology stack* sebagai berikut:

- [Docker](https://docs.docker.com/engine/install/)
- [Docker Compose](https://docs.docker.com/compose/install/)
- [Terraform](https://github.com/hashicorp/terraform)
- [Localstack](https://github.com/localstack/localstack)

Jalankan: `docker compose -f docker-compose.test.yaml up -d`

## Percobaan

1. Pindah ke direktori `/path/to/example-terraform-policy-as-code/terraform`
2. Jalankan: `terraform init`
