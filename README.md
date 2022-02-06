# cloud-platform-terraform-github-prototype

[![Releases](https://img.shields.io/github/release/ministryofjustice/cloud-platform-terraform-github-prototype/all.svg?style=flat-square)](https://github.com/ministryofjustice/cloud-platform-terraform-github-prototype/releases)

Terraform module that creates github prototype files

This module assumes the following:

* User have already have prototype github repository.
* Prototype kit code already exists.
* Prototype kit code is build using JavaScript. Node.js is the runtime and npm is the Package Manager for Node.js modules.

## Usage

# For EKS clusters
```
module "github-prototype" {
  source = "github.com/ministryofjustice/cloud-platform-terraform-github-prototype=1.0.1"

  namespace           = "my-namespace"
}
```
<!--- BEGIN_TF_DOCS --->
## Requirements


## Providers

## Modules


## Resources

## Inputs

## Outputs

No output.

<!--- END_TF_DOCS --->


