data "aws_secretsmanager_secret_version" "creds" {
  secret_id = "my_public_key"
}

