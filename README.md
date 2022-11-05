# Example Terraform Code Analysis

## Tabel Perbandingan

|                 | **ConfTest**                 | **Terraform Compliance** | **Sentinel**    | **Semgrep**       | **Checkov**       |
|-----------------|------------------------------|--------------------------|-----------------|-------------------|-------------------|
| **Bahasa**      | Rego Open Policy Agent (OPA) | Gherkin                  | Sentinel        | YAML              | YAML              |
| **Komunitas**   | Sedang                       | Kecil                    | Kecil           | Luas              | Luas              |
| **Popularitas** | Sedang                       | Rendah                   | Sedang          | Tinggi            | Tinggi            |
| **Hak Akses**   | Tinggi                       | Tinggi                   | Tinggi          | Rendah            | Tinggi            |
| **Harga**       | Gratis                       | Gratis                   | Berbayar        | Gratis & Berbayar | Gratis & Berbayar |
| **Kemudahan**   | Sulit                        | Mudah                    | Belum diketahui | Mudah             | Mudah             |

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
- **Semgrep**: *Simple Terraform Code Analysis*

  Hanya `Semgrep` yang saat ini mampu memastikan nama *module* dan *resource* mengikuti standard yang dibuat.

- **Terraform-compliance**: *More-customized Terraform Code Analysis*

### Catatan

`Checkov` juga bagus untuk *More-customized Terraform Code Analysis*. Tetapi, berdasarkan dokumentasi [berikut](https://www.checkov.io/3.Custom%20Policies/Custom%20Policies%20Overview.html), kita perlu melakukan langkah-langkah tambahan sebelum bisa menggunakan *custom policy* yang dibuat. 

Namun, hal-hal yang sudah bersifat **perlu diperiksa saat `runtime`**. Pertimbangkan menggunakan _rules_engine_ yang bisa secara periodik memeriksa infrastruktur yang berjalan saat itu, seperti [Cloud Custodian](https://github.com/cloud-custodian/cloud-custodian).
