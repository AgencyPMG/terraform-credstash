resource "aws_dynamodb_table" "credstash" {
    name = "${var.table_name}"
    read_capacity = "${var.table_read_capacity}"
    write_capacity = "${var.table_write_capacity}"
    hash_key = "name"
    range_key = "version"
    attribute {
        name = "name"
        type = "S"
    }
    attribute {
        name = "version"
        type = "S"
    }
    tags {
        Name = "${var.app}/${var.env} credstash"
        Application = "${var.app}"
        Environment = "${var.env}"
    }
}
