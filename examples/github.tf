/*
 * When using this module through the cloud-platform-environments,
 *
*/

module "github-prototype" {
  source = "../"

  namespace = "my-namespace"

  /*
  # Set these to false, if you don't want to create any of these files.

  prototype_create_github_workflow = false
  prototype_create_dockerfile      = false
  prototype_create_deployment_file = false
  prototype_create_start_sh        = false
*/

  /*
  # Provide path of files, if you want to use your own template files.

  github_workflow_content          = trimspace(file("templates/cd.yaml"))
  dockerfile_content               = trimspace(file("templates/Dockerfile"))
  deployment_file_content          = trimspace(file("templates/kubernetes-deploy.tpl"))
  start_sh_file_content            = trimspace(file("templates/start.sh"))
*/

}