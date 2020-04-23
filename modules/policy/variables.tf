variable "name" {
  default     = ""
  description = "IAM Policy name."
}

variable "path" {
  default     = "/"
  description = "The path of the policy in IAM."
}
variable "description" {
  default     = ""
  description = "The description of the policy."
}

variable "policy" {
  default     = ""
  description = "The policy document."
}