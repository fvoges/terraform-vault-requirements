# Terraform Vault requirements

This module manages some AWS resources required by Vault Enterprise.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.59.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 3.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_kms_key.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_secretsmanager_secret.vault_license](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret.vault_tls](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.vault_license](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [aws_secretsmanager_secret_version.vault_tls](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [tls_cert_request.vault_cert_request](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/cert_request) | resource |
| [tls_locally_signed_cert.vault_certificate](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/locally_signed_cert) | resource |
| [tls_private_key.ca](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [tls_private_key.vault_private_key](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [tls_self_signed_cert.ca](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/self_signed_cert) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_prefix"></a> [application\_prefix](#input\_application\_prefix) | The prefix to give to cloud entities | `string` | `"vault"` | no |
| <a name="input_vault_ca_bundle_secret"></a> [vault\_ca\_bundle\_secret](#input\_vault\_ca\_bundle\_secret) | The CA bundle to store in AWS Secrets Manager | `string` | `null` | no |
| <a name="input_vault_domain"></a> [vault\_domain](#input\_vault\_domain) | The DNS domain name for the TLS certificate | `string` | `"example.com"` | no |
| <a name="input_vault_kms_deletion_days"></a> [vault\_kms\_deletion\_days](#input\_vault\_kms\_deletion\_days) | Duration in days after which the key is deleted after destruction of the resource. | `number` | `30` | no |
| <a name="input_vault_kms_key_rotate"></a> [vault\_kms\_key\_rotate](#input\_vault\_kms\_key\_rotate) | Specifies whether key rotation is enabled. | `bool` | `true` | no |
| <a name="input_vault_license"></a> [vault\_license](#input\_vault\_license) | Vault license string | `string` | n/a | yes |
| <a name="input_vault_manage_tls_secrets"></a> [vault\_manage\_tls\_secrets](#input\_vault\_manage\_tls\_secrets) | Manage the TLS secret AWS Secrets Manager | `string` | `false` | no |
| <a name="input_vault_private_key_secret"></a> [vault\_private\_key\_secret](#input\_vault\_private\_key\_secret) | The signed certificate's private key to store in AWS Secrets Manager | `string` | `null` | no |
| <a name="input_vault_signed_cert_secret"></a> [vault\_signed\_cert\_secret](#input\_vault\_signed\_cert\_secret) | The signed certificate to store in AWS Secrets Manager | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_unseal_aws_kms_arn"></a> [unseal\_aws\_kms\_arn](#output\_unseal\_aws\_kms\_arn) | n/a |
| <a name="output_unseal_aws_kms_id"></a> [unseal\_aws\_kms\_id](#output\_unseal\_aws\_kms\_id) | n/a |
| <a name="output_vault_license_sercret_arn"></a> [vault\_license\_sercret\_arn](#output\_vault\_license\_sercret\_arn) | n/a |
| <a name="output_vault_tls_sercret_arn"></a> [vault\_tls\_sercret\_arn](#output\_vault\_tls\_sercret\_arn) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

