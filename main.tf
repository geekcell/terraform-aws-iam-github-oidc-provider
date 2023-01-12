/**
 * # Terraform AWS IAM GitHub OIDC Provider
 *
 * Simple module that creates an IAM OpenID Connect (OIDC) provider with the correct settings
 * for GitHub to allow for role assumption via web tokens. See: https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-amazon-web-services
 */
resource "aws_iam_openid_connect_provider" "main" {
  url             = var.provider_url
  client_id_list  = var.client_ids
  thumbprint_list = var.thumbprints

  tags = var.tags
}
