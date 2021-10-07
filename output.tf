output "unseal_aws_kms_arn" {
  value = aws_kms_key.main.arn
}

output "unseal_aws_kms_id" {
  value = aws_kms_key.main.id
}

output "vault_tls_sercret_arn" {
  value = aws_secretsmanager_secret.vault_tls.arn
}

output "vault_license_sercret_arn" {
  value = aws_secretsmanager_secret.vault_license.arn
}

