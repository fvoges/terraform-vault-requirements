
resource "aws_secretsmanager_secret" "vault_tls_ca" {
  name        = "${var.application_prefix}-tls-ca"
  description = "Vault TLS certificates"
}

resource "aws_secretsmanager_secret_version" "vault_tls_ca" {
  secret_id     = aws_secretsmanager_secret.vault_tls_ca.id
  secret_string = tls_self_signed_cert.ca.cert_pem
}

resource "aws_secretsmanager_secret" "vault_tls_cert" {
  name        = "${var.application_prefix}-tls-cert"
  description = "Vault TLS certificates"
}

resource "aws_secretsmanager_secret_version" "vault_tls_cert" {
  secret_id     = aws_secretsmanager_secret.vault_tls_cert.id
  secret_string = tls_locally_signed_cert.vault_certificate.cert_pem
}

resource "aws_secretsmanager_secret" "vault_tls_key" {
  name        = "${var.application_prefix}-tls-key"
  description = "Vault TLS certificates"
}

resource "aws_secretsmanager_secret_version" "vault_tls_key" {
  secret_id     = aws_secretsmanager_secret.vault_tls_key.id
  secret_string = tls_private_key.vault_private_key.private_key_pem
}

resource "aws_secretsmanager_secret" "vault_license" {
  name        = "${var.application_prefix}-license"
  description = "Vault Enterprise license"
}

resource "aws_secretsmanager_secret_version" "vault_license" {
  secret_id     = aws_secretsmanager_secret.vault_license.id
  secret_string = var.vault_license
}



