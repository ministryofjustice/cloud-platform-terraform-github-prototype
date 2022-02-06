
resource "github_repository_file" "github-workflow" {
  count = var.prototype_create_github_workflow ? 1 : 0

  repository          = var.namespace
  branch              = "main"
  file                = ".github/workflows/cd.yaml"
  content             = trimspace(file(var.github_workflow_content))
  commit_message      = "Managed by github prototype"
  overwrite_on_create = true
}

resource "github_repository_file" "dockerfile" {
  count = var.prototype_create_dockerfile ? 1 : 0

  repository          = var.namespace
  branch              = "main"
  file                = "Dockerfile"
  content             = trimspace(file(var.dockerfile_content))
  commit_message      = "Managed by github prototype"
  overwrite_on_create = true
}

resource "github_repository_file" "deployment-file" {
  count = var.prototype_create_deployment_file ? 1 : 0

  repository          = var.namespace
  branch              = "main"
  file                = "kubernetes-deploy.tpl"
  content             = trimspace(file(var.deployment_file_content))
  commit_message      = "Managed by github prototype"
  overwrite_on_create = true
}

resource "github_repository_file" "start-sh" {
  count = var.prototype_create_start_sh ? 1 : 0

  repository          = var.namespace
  branch              = "main"
  file                = "start.sh"
  content             = trimspace(file(var.start_sh_file_content))
  commit_message      = "Managed by github prototype"
  overwrite_on_create = true
}

resource "github_actions_secret" "prototype" {
  repository      = var.namespace
  secret_name     = "PROTOTYPE_NAME"
  plaintext_value = var.namespace
}
