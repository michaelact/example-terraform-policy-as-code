# Semgrep: Code Analysis at Ludicrous Speed

## Percobaan

1. Install [semgrep](https://semgrep.dev/docs/getting-started/)
2. Pindah directory ke `/path/to/example-terraform-policy-as-code`
3. Jalankan: `semgrep scan --config policy/semgrep/ terraform/`

Catatan: 
- Saat dokumentasi ini dibuat, terraform yang digunakan adalah versi `1.3.0` .

## Oke!

- Naming Convention:
  - Terraform Module Naming Convention
  - Terraform Resource Naming Convention
- Allowed Source Modules

## Tidak Oke!

### Terraform Resource Tag Naming Convention

Semgrep tidak mampu **membaca keterkaitan antar resource di terraform**. Dalam contoh, berikut, kode yang mampu dimengerti:

```
module "network_staging_empire" {
  source = "terraform-aws-modules/vpc/aws"

  name = "network-staging-empire"
  cidr = "10.0.0.0/16"

  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform   = false
    Project     = "nightwolf"
    Environment = "staging"
  }
}
```

Tetapi, pada kasus yang lain, kita sering menggunakan `tags` dengan variabel. Seperti berikut:

```
locals {
  enabled_tags = {
    Terraform   = true
    Project     = "sparta"
    Environment = "staging"
  }
}

module "network_staging_sparta" {
  source = "terraform-aws-modules/vpc/aws"

  name = "network-staging-sparta"
  cidr = "10.0.0.0/16"

  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = local.enabled_tags
}
```

Ketika proses _scanning_ dijalankan, dia tetap berpikir kalau `network_staging_sparta` tidak memiliki tag `Terraform = true`.

```
$ cd /path/to/example-terraform-policy-as-code
$ semgrep scan --config=policy/semgrep/standard_tags_existence.yaml terraform/
FINDINGS: 

... TRUNCATED

  network.tf
     policy.semgrep.module-tags-existence
        Ensure module tag contains Terraform key


          2┆ module "network_staging_sparta" {
          3┆   source = "terraform-aws-modules/vpc/aws"
          4┆
          5┆   name = "network-staging-sparta"
          6┆   cidr = "10.0.0.0/16"
          7┆
          8┆   azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
          9┆   private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
         10┆   public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
         11┆
-------- [hid 5 additional lines, adjust with --max-lines-per-finding] ---------
         19┆ module "network_staging_empire" {
         20┆   source = "terraform-aws-modules/vpc/aws"
         21┆
         22┆   name = "network-staging-empire"
         23┆   cidr = "10.0.0.0/16"
         24┆
         25┆   azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
         26┆   private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
         27┆   public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
         28┆
-------- [hid 9 additional lines, adjust with --max-lines-per-finding] ---------

... TRUNCATED

Ran 2 rules on 5 files: 5 findings.
```
