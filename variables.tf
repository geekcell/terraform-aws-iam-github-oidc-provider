# Context
variable "tags" {
  default     = {}
  description = "Tags to add to the AWS Customer Managed Key."
  type        = map(any)
}

# OIDC Provider
variable "provider_url" {
  description = "The URL of the GitHub provider."
  default     = "https://token.actions.githubusercontent.com"
  type        = string
}

variable "client_ids" {
  description = "The client IDs of the GitHub apps."
  default     = ["sts.amazonaws.com"]
  type        = list(string)
}

variable "thumbprints" {
  description = "The thumbprints of the GitHub provider."
  default     = ["6938fd4d98bab03faadb97b34396831e3780aea1", "1c58a3a8518e8759bf075b76b750d4f2df264fcd"]
  type        = list(string)
}
