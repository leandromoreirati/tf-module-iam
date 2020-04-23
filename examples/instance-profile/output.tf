/* IAM INSTANCE PROFILE */
output "instance_profile_name" {
  value       = module.iam_instance_profile.instance_profile_name
  description = "The instance profile's name."
}

output "instance_profile_id" {
  value       = module.iam_instance_profile.instance_profile_id
  description = "The instance profile's ID."
}


output "instance_profile_arn" {
  value       = module.iam_instance_profile.instance_profile_arn
  description = "The ARN assigned by AWS to the instance profile."
}
