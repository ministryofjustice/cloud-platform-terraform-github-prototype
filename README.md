# cloud-platform-terraform-github-prototype

[![Releases](https://img.shields.io/github/release/ministryofjustice/cloud-platform-terraform-github-prototype/all.svg?style=flat-square)](https://github.com/ministryofjustice/cloud-platform-terraform-github-prototype/releases)

Terraform module that creates github prototype files

This module assumes the following:

* User have already have prototype github repository.
* Prototype kit code already exists.
* Prototype kit code is build using JavaScript. Node.js is the runtime and npm is the Package Manager for Node.js modules.

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
| terraform | >= 0.14 |
| github | ~> 4.14.0 |

## Providers

| Name | Version |
|------|---------|
| github | ~> 4.14.0 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [github_actions_secret](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) |
| [github_repository_file](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| deployment\_file\_content | path of deployment template | `string` | `"templates/kubernetes-deploy.tpl"` | no |
| dockerfile\_content | path of dockerfile file | `string` | `"templates/Dockerfile"` | no |
| github\_repositories | GitHub repositories in which to create github actions secrets | `list(string)` | `[]` | no |
| github\_workflow\_content | path of github\_workflow\_content file | `string` | `"templates/cd.yaml"` | no |
| namespace | The namespace in which this serviceaccount will be created | `any` | n/a | yes |
| prototype\_create\_deployment\_file | Create deployment file | `bool` | `true` | no |
| prototype\_create\_dockerfile | Create dockerfile file | `bool` | `true` | no |
| prototype\_create\_github\_workflow | Create github\_workflow file | `bool` | `true` | no |
| prototype\_create\_start\_sh | Create start.sh file | `bool` | `true` | no |
| start\_sh\_file\_content | path of start\_sh template | `string` | `"templates/start.sh"` | no |

## Outputs

No output.

<!--- END_TF_DOCS --->


