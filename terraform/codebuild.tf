resource "aws_codebuild_project" "ci" {
  name         = "${var.name_prefix}-ci"
  service_role = aws_iam_role.codebuild_role.arn

  artifacts {
    type = "CODEPIPELINE"
  }

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"
    image        = "aws/codebuild/amazonlinux2-x86_64-standard:5.0"
    type         = "LINUX_CONTAINER"

    environment_variable {
      name  = "GITHUB_REPO"
      value = "${var.github_owner}/${var.github_repo}"
    }

    environment_variable {
      name  = "GITHUB_BRANCH"
      value = var.github_branch
    }
  }

  source {
    type      = "CODEPIPELINE"
    buildspec = "buildspec.yml"
  }
}