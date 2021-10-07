
variable "application_prefix" {
  type        = string
  description = "The prefix to give to cloud entities"
  default     = "vault"
}

variable "vault_kms_key_rotate" {
  type        = bool
  description = "Specifies whether key rotation is enabled."
  default     = true
}

variable "vault_kms_deletion_days" {
  type        = number
  description = "Duration in days after which the key is deleted after destruction of the resource."
  default     = 30
}

variable "vault_manage_tls_secrets" {
  type        = string
  description = "Manage the TLS secret AWS Secrets Manager"
  default     = false
}


variable "vault_ca_bundle_secret" {
  type        = string
  description = "The CA bundle to store in AWS Secrets Manager"
  default     = null
}

variable "vault_signed_cert_secret" {
  type        = string
  description = "The signed certificate to store in AWS Secrets Manager"
  default     = null
}

variable "vault_private_key_secret" {
  type        = string
  description = "The signed certificate's private key to store in AWS Secrets Manager"
  default     = null
}

variable "vault_domain" {
  type        = string
  description = "The DNS domain name for the TLS certificate"
  default     = "example.com"
}

variable "vault_license" {
  type        = string
  description = "Vault license string"
}

