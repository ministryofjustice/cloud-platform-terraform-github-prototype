terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = ">= 4.14.0"
    }
  }
  required_version = ">= 1.2.5"
}
