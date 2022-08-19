# cloud-platform-terraform-github-prototype

[![Releases](https://img.shields.io/github/release/ministryofjustice/cloud-platform-terraform-github-prototype/all.svg?style=flat-square)](https://github.com/ministryofjustice/cloud-platform-terraform-github-prototype/releases)

Terraform module that creates github prototype files

This module assumes the following:

* User already have prototype github repository.
* [Gov.UK Prototype Kit] code already exists in your repository.
* Prototype kit code is build using JavaScript. Node.js is the runtime and npm is the Package Manager for Node.js modules.

This module creates:
### Files to build a docker image to run the prototype site

* Dockerfile
* .dockerignore
* start.sh

### A continuous deployment (CD) workflow, targeting the Cloud Platform

* .github/workflows/cd.yaml
* kubernetes-deploy.tpl

## Usage

```
module "github-prototype" {
  source = "github.com/ministryofjustice/cloud-platform-terraform-github-prototype=1.0.1"

  namespace           = "my-namespace"
}
```

<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_github"></a> [github](#requirement\_github) | >= 4.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | >= 4.14.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_actions_secret.prototype](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_repository_file.deployment-file](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file) | resource |
| [github_repository_file.docker-ignore-file](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file) | resource |
| [github_repository_file.dockerfile](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file) | resource |
| [github_repository_file.github-workflow](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file) | resource |
| [github_repository_file.start-sh](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_deployment_file_content"></a> [deployment\_file\_content](#input\_deployment\_file\_content) | path of deployment template | `string` | `""` | no |
| <a name="input_docker_ignore_file_content"></a> [docker\_ignore\_file\_content](#input\_docker\_ignore\_file\_content) | path of docker ignore file file | `string` | `""` | no |
| <a name="input_dockerfile_content"></a> [dockerfile\_content](#input\_dockerfile\_content) | path of dockerfile file | `string` | `""` | no |
| <a name="input_github_workflow_content"></a> [github\_workflow\_content](#input\_github\_workflow\_content) | path of github\_workflow\_content file | `string` | `""` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The namespace in which this serviceaccount will be created | `string` | n/a | yes |
| <a name="input_prototype_create_deployment_file"></a> [prototype\_create\_deployment\_file](#input\_prototype\_create\_deployment\_file) | Create deployment file | `bool` | `true` | no |
| <a name="input_prototype_create_docker_ignore_file"></a> [prototype\_create\_docker\_ignore\_file](#input\_prototype\_create\_docker\_ignore\_file) | Create dockerfile file | `bool` | `true` | no |
| <a name="input_prototype_create_dockerfile"></a> [prototype\_create\_dockerfile](#input\_prototype\_create\_dockerfile) | Create dockerfile file | `bool` | `true` | no |
| <a name="input_prototype_create_github_workflow"></a> [prototype\_create\_github\_workflow](#input\_prototype\_create\_github\_workflow) | Create github\_workflow file | `bool` | `true` | no |
| <a name="input_prototype_create_start_sh"></a> [prototype\_create\_start\_sh](#input\_prototype\_create\_start\_sh) | Create start.sh file | `bool` | `true` | no |
| <a name="input_start_sh_file_content"></a> [start\_sh\_file\_content](#input\_start\_sh\_file\_content) | path of start\_sh template | `string` | `""` | no |

## Outputs

No outputs.

<!--- END_TF_DOCS --->


[Gov.UK Prototype Kit]: https://govuk-prototype-kit.herokuapp.com/docs
