/**
 * # Terraform AWS IAM GitHub OIDC Provider
 *
 * Introducing the AWS IAM OpenID Provider Terraform Module, a simple solution for creating and managing your IAM
 * OpenID Connect (OIDC) providers within Amazon Web Services (AWS). This module has been designed with simplicity in
 * mind, providing you with an easy way to create and manage your IAM OIDC providers.
 *
 * Our team of experts has years of experience working with AWS IAM and has a deep understanding of the best practices
 * and configurations. By using this Terraform module, you can be sure that your IAM OIDC providers are created and
 * managed in a secure and efficient manner.
 *
 * This module offers a preconfigured solution for creating an IAM OIDC provider with the correct settings for GitHub,
 * allowing for role assumption via web tokens. This simplifies the process of securely integrating your AWS resources
 * with GitHub, saving you time and effort in the process.
 *
 * So, if you're looking for a convenient and reliable solution for creating and managing your IAM OIDC providers
 * within AWS, look no further than the AWS IAM OpenID Provider Terraform Module. Give it a try and see how easy it is
 * to integrate your AWS resources with GitHub!
 *
 * https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-amazon-web-services
 */
resource "aws_iam_openid_connect_provider" "main" {
  url             = var.provider_url
  client_id_list  = var.client_ids
  thumbprint_list = var.thumbprints

  tags = var.tags
}
