variable "app" {
    type = "string"
    description = "The application name, used in the `Application` tags."
}

variable "env" {
    type = "string"
    description = "The application environment (prod, staging, etc). Pass in terraform.env here if you like. Used in the `Environment` tags."
}

variable "key_alias" {
    type = "string"
    default = "credstash"
    description = "The alias for the encryption key. Credstash expects `credstash` by default."
}

variable "table_name" {
    type = "string"
    default = "credential-store"
    description = "The name of the DynamoDB table where credentials reside. Credstash expects `credential-store` by default."
}

variable "table_read_capacity" {
    default = 1
    description = "Credential table read capacity."
}

variable "table_write_capacity" {
    default = 1
    description = "Credential table write capacity."
}
