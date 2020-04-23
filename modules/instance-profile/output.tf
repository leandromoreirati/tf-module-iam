output "instance_profile_id" {
  value       = aws_iam_instance_profile.instance_profile.id
  description = "The instance profile's ID."
}

output "instance_profile_name" {
  value       = aws_iam_instance_profile.instance_profile.name
  description = "The ARN assigned by AWS to the instance profile."
}

output "instance_profile_arn" {
  value       = aws_iam_instance_profile.instance_profile.arn
  description = "The instance profile's name."
}

