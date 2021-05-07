# terraform-aws-tardigrade-security-group

Terraform module to create an EC2 security group


<!-- BEGIN TFDOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Resources

| Name | Type |
|------|------|

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Name of the Security Group | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID in which to create the Security Group | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Description of the Security Group | `string` | `"Managed by Terraform"` | no |
| <a name="input_egress_rules"></a> [egress\_rules](#input\_egress\_rules) | A schema list of egress rules for the Security Group, see <https://www.terraform.io/docs/providers/aws/r/security_group.html#egress> | `list(any)` | `[]` | no |
| <a name="input_ingress_rules"></a> [ingress\_rules](#input\_ingress\_rules) | A schema list of ingress rules for the Security Group, see <https://www.terraform.io/docs/providers/aws/r/security_group.html#ingress> | `list(any)` | `[]` | no |
| <a name="input_revoke_rules_on_delete"></a> [revoke\_rules\_on\_delete](#input\_revoke\_rules\_on\_delete) | Determines whether to forcibly remove rules when destroying the security group | `string` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags for the Security Group | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN of the Security Group |
| <a name="output_id"></a> [id](#output\_id) | The ID of the Security Group |
| <a name="output_name"></a> [name](#output\_name) | The name of the Security Group |
| <a name="output_owner_id"></a> [owner\_id](#output\_owner\_id) | The owner ID of the Security Group |

<!-- END TFDOCS -->
