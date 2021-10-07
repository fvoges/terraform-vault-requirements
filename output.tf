output "unseal_aws_kms_arn" {
  value       = aws_kms_key.main.arn
  description = "AWS KMS key ARN for Vault auto-unseal"
}

output "unseal_aws_kms_id" {
  value       = aws_kms_key.main.id
  description = "AWS KMS key ID for Vault auto-unseal"
}

output "vault_tls_sercret_arn" {
  value       = aws_secretsmanager_secret.vault_tls.arn
  description = "AWS Secret Manager ARN for Vault TLS CA, cert, and private key"
}

output "vault_license_sercret_arn" {
  value       = aws_secretsmanager_secret.vault_license.arn
  description = "AWS Secret Manager ARN for Vault Enterprise license string"
}
