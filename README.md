<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.30.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.30.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_internet_gateway.igw](https://registry.terraform.io/providers/hashicorp/aws/5.30.0/docs/resources/internet_gateway) | resource |
| [aws_route_table.PublicRT](https://registry.terraform.io/providers/hashicorp/aws/5.30.0/docs/resources/route_table) | resource |
| [aws_route_table_association.PublicRTassociation](https://registry.terraform.io/providers/hashicorp/aws/5.30.0/docs/resources/route_table_association) | resource |
| [aws_subnet.PrivateSubnetApp1](https://registry.terraform.io/providers/hashicorp/aws/5.30.0/docs/resources/subnet) | resource |
| [aws_subnet.PublicSubnetWeb1](https://registry.terraform.io/providers/hashicorp/aws/5.30.0/docs/resources/subnet) | resource |
| [aws_subnet.PublicSubnetWeb2](https://registry.terraform.io/providers/hashicorp/aws/5.30.0/docs/resources/subnet) | resource |
| [aws_vpc.myvpc](https://registry.terraform.io/providers/hashicorp/aws/5.30.0/docs/resources/vpc) | resource |

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->