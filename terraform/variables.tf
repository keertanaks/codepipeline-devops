variable "aws_region" {
  type = string
}

variable "name_prefix" {
  description = "Used for naming resources, e.g. spring-cicd-dev"
  type        = string
}

# Repo details (used for CodeBuild env vars / naming only; not needed as source is CodePipeline later)
variable "github_owner" { type = string }
variable "github_repo" { type = string }
variable "github_branch" { type = string } # develop or main

# Existing Elastic Beanstalk (since you already created manually)
variable "eb_application_name" {
  type        = string
  description = "Existing Elastic Beanstalk application name (created manually)."
}

variable "eb_environment_name" {
  type        = string
  description = "Existing Elastic Beanstalk environment name (created manually)."
}

# Optional: if you want to store GitHub token in SSM for legacy OAuth pipelines
variable "github_token" {
  type      = string
  sensitive = true
  default   = null
}