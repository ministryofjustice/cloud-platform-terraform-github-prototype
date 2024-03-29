/*
 * When using this module through the cloud-platform-environments,
 *
*/

module "github-prototype" {
  source = "../"

  namespace = "my-namespace"

  /*
  # Set these to false, if you don't want to create any of these files.

  prototype_create_github_workflow    = false
  prototype_create_dockerfile         = false
  prototype_create_deployment_file    = false
  prototype_create_start_sh           = false
  prototype_create_docker_ignore_file = false
*/

  /*
  # Provide path of files, if you want to use your own template files.

  github_workflow_content          = trimspace("templates/cd.yaml")
  dockerfile_content               = trimspace("templates/Dockerfile")
  docker_ignore_file_content       = trimspace("templates/.dockerignore")
  deployment_file_content          = trimspace("templates/kubernetes-deploy.tpl")
  start_sh_file_content            = trimspace("templates/start.sh")
*/

}