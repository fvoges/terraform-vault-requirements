locals {
  tls_secret = {
    tls_certificate     = tls_locally_signed_cert.vault_certificate.cert_pem
    tls_certificate_ca  = tls_self_signed_cert.ca.cert_pem
    tls_certificate_key = tls_private_key.vault_private_key.private_key_pem
  }
}

resource "aws_secretsmanager_secret" "vault_tls" {
  name        = "${var.application_prefix}-tls"
  description = "V"
}

resource "aws_secretsmanager_secret_version" "vault_tls" {
  secret_id     = aws_secretsmanager_secret.vault_tls.id
  secret_string = jsonencode(local.tls_secret)
}

resource "aws_secretsmanager_secret" "vault_license" {
  name        = "${var.application_prefix}-license"
  description = "Vault Enterprise license"
}

resource "aws_secretsmanager_secret_version" "vault_license" {
  secret_id     = aws_secretsmanager_secret.vault_license.id
  secret_string = var.vault_license
}



