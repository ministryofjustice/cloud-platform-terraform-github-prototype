
resource "github_repository_file" "github-workflow" {
  count = var.prototype_create_github_workflow ? 1 : 0

  repository          = var.namespace
  branch              = "main"
  file                = ".github/workflows/cd.yaml"
  content             = file(coalesce(var.github_workflow_content, "${path.module}/templates/cd.yaml"))
  commit_message      = "Managed by github prototype"
  overwrite_on_create = true
}

resource "github_repository_file" "dockerfile" {
  count = var.prototype_create_dockerfile ? 1 : 0

  repository          = var.namespace
  branch              = "main"
  file                = "Dockerfile"
  content             = file(coalesce(var.dockerfile_content, "${path.module}/templates/Dockerfile"))
  commit_message      = "Managed by github prototype"
  overwrite_on_create = true
}

resource "github_repository_file" "deployment-file" {
  count = var.prototype_create_deployment_file ? 1 : 0

  repository          = var.namespace
  branch              = "main"
  file                = "kubernetes-deploy.tpl"
  content             = file(coalesce(var.deployment_file_content, "${path.module}/templates/kubernetes-deploy.tpl"))
  commit_message      = "Managed by github prototype"
  overwrite_on_create = true
}

resource "github_repository_file" "start-sh" {
  count = var.prototype_create_start_sh ? 1 : 0

  repository          = var.namespace
  branch              = "main"
  file                = "start.sh"
  content             = file(coalesce(var.start_sh_file_content, "${path.module}/templates/start.sh"))
  commit_message      = "Managed by github prototype"
  overwrite_on_create = true
}

resource "github_actions_secret" "prototype" {
  repository      = var.namespace
  secret_name     = "PROTOTYPE_NAME"
  plaintext_value = var.namespace
}
