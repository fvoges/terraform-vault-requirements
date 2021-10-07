resource "aws_kms_key" "main" {
  description             = "KMS key for ${var.application_prefix} Vault Auto Unseal"
  enable_key_rotation     = var.vault_kms_key_rotate
  deletion_window_in_days = var.vault_kms_deletion_days

  tags = {
    Name = "vault-kms-${var.application_prefix}"
    // Owner = var.owner
  }
}
