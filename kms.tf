resource "aws_kms_key" "credstash" {
    description = "Credstash Key"
    tags {
        Application = "${var.app}"
        Environment = "${var.env}"
    }
}

resource "aws_kms_alias" "credstash" {
    name = "alias/${var.key_alias}"
    target_key_id = "${aws_kms_key.credstash.key_id}"
}
