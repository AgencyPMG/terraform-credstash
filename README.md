# Terraform Credstash Module

Provides the necessary stuff to run [credstash](https://github.com/fugue/credstash)

## What's Included

- A **KMS Key** that credstash will use to read/write secrets
- A **DynamoDB Table** into which secrets will be stored
- Reader and Writer **IAM Policies** to access the secrets.

## Usage

```hcl
module "credstash" {
    source = "github.com/AgencyPMG/terraform-credstash"
    app = "appname" // used in the `Application` tags
    env = "prod" // or ${terraform.env}, used in the `Environment` tags
    key_alias = "credstash" // optional, `credstash` is the default
    table_name = "credential-store" // optional, `credential-store` is the default
    table_read_capacity = 1 // optional, 1 is the default
    table_write_capacity = 1 // optional, 1 is the default
}
```
