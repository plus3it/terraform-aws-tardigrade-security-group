# terraform-aws-tardigrade-security-group

Terraform module to create an EC2 security group


<!-- BEGIN TFDOCS -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Name of the Security Group | `string` | n/a | yes |
| vpc\_id | VPC ID in which to create the Security Group | `string` | n/a | yes |
| description | Description of the Security Group | `string` | `"Managed by Terraform"` | no |
| egress\_rules | A schema list of egress rules for the Security Group, see <https://www.terraform.io/docs/providers/aws/r/security_group.html#egress> | `list` | `[]` | no |
| ingress\_rules | A schema list of ingress rules for the Security Group, see <https://www.terraform.io/docs/providers/aws/r/security_group.html#ingress> | `list` | `[]` | no |
| revoke\_rules\_on\_delete | Determines whether to forcibly remove rules when destroying the security group | `string` | `false` | no |
| tags | A map of tags for the Security Group | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | The ARN of the Security Group |
| id | The ID of the Security Group |
| name | The name of the Security Group |
| owner\_id | The owner ID of the Security Group |

<!-- END TFDOCS -->
