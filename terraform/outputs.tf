output "artifact_bucket" {
  value = aws_s3_bucket.artifacts.bucket
}

output "codebuild_project_name" {
  value = aws_codebuild_project.ci.name
}

output "codepipeline_role_arn" {
  value = aws_iam_role.codepipeline_role.arn
}

output "eb_application_name" {
  value = var.eb_application_name
}

output "eb_environment_name" {
  value = var.eb_environment_name
}

output "eb_instance_profile_name" {
  value = aws_iam_instance_profile.eb_instance_profile.name
}