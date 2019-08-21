# terraform-aws-tardigrade-security-group

Terraform module to create an EC2 security group

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create\_sg | Toggle controlling whether to create the security group | string | `"true"` | no |
| description | Description of the Security Group | string | `"Managed by Terraform"` | no |
| egress\_rules | A schema list of egress rules for the Security Group, see <https://www.terraform.io/docs/providers/aws/r/security_group.html#egress> | list | `<list>` | no |
| ingress\_rules | A schema list of ingress rules for the Security Group, see <https://www.terraform.io/docs/providers/aws/r/security_group.html#ingress> | list | `<list>` | no |
| name | Name of the Security Group | string | n/a | yes |
| revoke\_rules\_on\_delete | Determines whether to forcibly remove rules when destroying the security group | string | `"false"` | no |
| tags | A map of tags for the Security Group | map | `<map>` | no |
| vpc\_id | VPC ID in which to create the Security Group | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| arn | The ARN of the Security Group |
| id | The ID of the Security Group |
| name | The name of the Security Group |
| owner\_id | The owner ID of the Security Group |

