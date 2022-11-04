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

## Spesifikasi

- **Dukungan komunitas yang kuat**: Mudah untuk mengumpulkan orang-orang yang mengerti tentang kasus dan masalah yang kita hadapi ketika menggunakan alat tersebut.
- **Hak akses yang rendah**: Terraform state menyimpan konfigurasi-konfigurasi infrastruktur, tak jarang menyimpan secret value juga. Lebih bagus bila alat tidak membutuhkan akses ke terraform state.
- **Aktif development**: Alat yang tidak aktif development, rawan menjadi gerbang masuk dari serangan keamanan.
- **Mudah untuk dipelajari.**

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
