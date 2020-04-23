variable "name" {
  default     = ""
  description = "IAM Policy Attachment name."
}

variable "role" {
  default     = ""
  description = "The role the policy should be applied to."
}

variable "policy_arn" {
  default     = ""
  description = "The ARN of the policy you want to apply."
}
