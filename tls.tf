#------------------------------------------------------------------------------
# Certificate Authority
#------------------------------------------------------------------------------
resource "tls_private_key" "ca" {
  algorithm   = "RSA"
  ecdsa_curve = "P384"
  rsa_bits    = "2048"
}

resource "tls_self_signed_cert" "ca" {
  key_algorithm         = tls_private_key.ca.algorithm
  private_key_pem       = tls_private_key.ca.private_key_pem
  is_ca_certificate     = true
  validity_period_hours = "168"

  allowed_uses = [
    "cert_signing",
    "key_encipherment",
    "digital_signature"
  ]

  subject {
    organization = "HashiCorp (NonTrusted)"
    common_name  = "HashiCorp (NonTrusted) Private Certificate Authority"
    country      = "US"
  }
}

#------------------------------------------------------------------------------
# Certificate
#------------------------------------------------------------------------------
resource "tls_private_key" "vault_private_key" {
  algorithm   = "RSA"
  ecdsa_curve = "P384"
  rsa_bits    = "2048"
}

resource "tls_cert_request" "vault_cert_request" {
  key_algorithm   = tls_private_key.vault_private_key.algorithm
  private_key_pem = tls_private_key.vault_private_key.private_key_pem

  dns_names    = [format("*.%s", var.vault_domain)]
  ip_addresses = ["127.0.0.1", "::1"]

  subject {
    common_name  = "vault.hashicorp.com"
    organization = "Vault Private Certificate"
  }
}

resource "tls_locally_signed_cert" "vault_certificate" {

  cert_request_pem   = tls_cert_request.vault_cert_request.cert_request_pem
  ca_key_algorithm   = tls_private_key.ca.algorithm
  ca_private_key_pem = tls_private_key.ca.private_key_pem
  ca_cert_pem        = tls_self_signed_cert.ca.cert_pem

  validity_period_hours = "168"

  allowed_uses = [
    "key_encipherment",
    "digital_signature",
  ]
}
