# Example Terraform Code Analysis

## Tabel Perbandingan

|             | ConfTest                     | Terraform Compliance | Sentinel        | Semgrep           | Checkov           |
|-------------|------------------------------|----------------------|-----------------|-------------------|-------------------|
| Bahasa      | Rego Open Policy Agent (OPA) | Custom               | Sentinel        | YAML              | YAML              |
| Komunitas   | Sedang                       | Kecil                | Kecil           | Luas              | Luas              |
| Popularitas | Sedang                       | Rendah               | Sedang          | Tinggi            | Tinggi            |
| Hak Akses   | Tinggi                       | Tinggi               | Tinggi          | Rendah            | Tinggi            |
| Harga       | Gratis                       | Gratis               | Berbayar        | Gratis & Berbayar | Gratis & Berbayar |
| Kemudahan   | Sulit                        | Mudah                | Belum diketahui | Mudah             | Mudah             |

## Studi Kasus

- Naming Convention:
  - Terraform Module Naming Convention
  - Terraform Resource Naming Convention
  - Terraform Resource Tag Naming Convention
- Supply Chain Attack

## Rekomendasi
- **Semgrep**: *Terraform Module and Resource Naming Convention*

  Hanya Semgrep yang saat ini mampu memastikan nama *module* dan *resource* mengikuti standard yang dibuat.

- **Checkov**: *Advanced Terraform Static Code Analysis*

  Checkov dengan dukungan komunitas yang luas, sudah sangat banyak built-in rules yang tersedia. 
