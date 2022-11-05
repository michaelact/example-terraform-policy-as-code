# Terraform Compliance: Lightweight, security and compliance focused test framework

## Percobaan

1. Install [terraform-compliance](https://terraform-compliance.com/pages/installation/)
2. Pindah directory ke `/path/to/example-terraform-policy-as-code/terraform`
3. Export plan file: `terraform plan --out tfplan.binary`
4. Convert to json file: `tf-aws show -json tfplan.binary > tfplan.json`
5. Pindah directory ke `/path/to/example-terraform-policy-as-code/terraform`
6. Jalankan: `terraform-compliance -f policy/terraform-compliance/ -p terraform/tfplan.json`

Catatan: 
- Saat dokumentasi ini dibuat, terraform yang digunakan adalah versi `0.14.1` .

## Oke!

- Resource Tag Standardization

## Belum diketahui

- Naming Convention:
  - Terraform Module Naming Convention
  - Terraform Resource Naming Convention
- Allowed Source Modules
