variable "name" {
  default     = ""
  description = "IAM Role name."
}

variable "tags" {
  type        = map
  default     = {}
  description = "Setting tags for the feature"
}

variable "assume_role_policy" {
  default     = ""
  description = "The policy that grants an entity permission to assume the role."
}

variable "path" {
  default     = "/"
  description = "Path to the role."
}