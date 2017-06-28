output "kms_key_id" {
    value = "${aws_kms_key.credstash.key_id}"
}

output "kms_key_arn" {
    value = "${aws_kms_key.credstash.arn}"
}

output "kms_alias_name" {
    value = "${aws_kms_alias.credstash.name}"
}

output "kms_alias_arn" {
    value = "${aws_kms_alias.credstash.arn}"
}

output "ddb_table_name" {
    value = "${aws_dynamodb_table.credstash.id}"
}

output "ddb_table_arn" {
    value = "${aws_dynamodb_table.credstash.arn}"
}

output "reader_policy_arn" {
    value = "${aws_iam_policy.reader.arn}"
}

output "writer_policy_arn" {
    value = "${aws_iam_policy.writer.arn}"
}
