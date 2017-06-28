data "aws_iam_policy_document" "reader" {
    statement {
        sid = "AllowKmsDecrypt"
        effect = "Allow"
        actions = ["kms:Decrypt"]
        resources = ["${aws_kms_key.credstash.arn}"]
    }
    statement {
        sid = "AllowDynamoRead"
        effect = "Allow"
        actions = [
            "dynamodb:GetItem",
            "dynamodb:Query",
            "dynamodb:Scan",
        ]
        resources = ["${aws_dynamodb_table.credstash.arn}"]
    }
}

resource "aws_iam_policy" "reader" {
    name = "credstash-reader@${var.app}${var.env}"
    description = "Read access to credstash resources"
    policy = "${data.aws_iam_policy_document.reader.json}"
}

data "aws_iam_policy_document" "writer" {
    statement {
        sid = "AllowKmsDataKeys"
        effect = "Allow"
        actions = ["kms:GenerateDataKey"]
        resources = ["${aws_kms_key.credstash.arn}"]
    }
    statement {
        sid = "AllowDynamoWrite"
        effect = "Allow"
        actions = ["dynamodb:PutItem"]
        resources = ["${aws_dynamodb_table.credstash.arn}"]
    }
}

resource "aws_iam_policy" "writer" {
    name = "credstash-writer@${var.app}${var.env}"
    description = "Write access to credstash resources"
    policy = "${data.aws_iam_policy_document.writer.json}"
}
