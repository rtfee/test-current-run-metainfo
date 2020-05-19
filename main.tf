provider "scalr" {}

data "scalr_current_run" "current" {}
locals {
  run = data.scalr_current_run.current
}

output "id" {
  value = local.run.id
}
output "source" {
  value = local.run.source
}
output "message" {
  value = local.run.message
}
output "is_dry" {
  value = local.run.is_dry
}
output "workspace_name" {
  value = local.run.workspace[0].name
}
output "workspace_auto_apply" {
  value = local.run.workspace[0].auto_apply
}
output "workspace_working_directory" {
  value = local.run.workspace[0].working_directory
}
output "vcs_branch" {
  value = local.run.vcs[0].branch
}
output "vcs_repository" {
  value = local.run.vcs[0].repository_id
}
output "vcs_commit_sha" {
  value = local.run.vcs[0].commit[0].sha
}
output "vcs_commit_message" {
  value = local.run.vcs[0].commit[0].message
}
output "vcs_commit_author" {
  value = local.run.vcs[0].commit[0].author.username
}

resource "null_resource" "run" {
  triggers = {
    always_run = "${timestamp()}"
  }
  provisioner "local-exec" {
    command = "echo ${local.run.vcs[0].commit[0].sha}"
  }
}

resource "null_resource" "test_1" {
}
