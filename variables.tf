
variable "namespace" {
  description = "The namespace in which this serviceaccount will be created"
}

variable "github_repositories" {
  description = "GitHub repositories in which to create github actions secrets"
  type        = list(string)
  default     = []
}

variable "prototype_create_github_workflow" {
  description = "Create github_workflow file"
  type        = bool
  default     = true
}

variable "prototype_create_dockerfile" {
  description = "Create dockerfile file"
  type        = bool
  default     = true
}

variable "prototype_create_docker_ignore_file" {
  description = "Create dockerfile file"
  type        = bool
  default     = true
}
variable "prototype_create_deployment_file" {
  description = "Create deployment file"
  type        = bool
  default     = true
}

variable "prototype_create_start_sh" {
  description = "Create start.sh file"
  type        = bool
  default     = true
}

variable "github_workflow_content" {
  default     = ""
  description = "path of github_workflow_content file"
  type        = string
}

variable "dockerfile_content" {
  default     = ""
  description = "path of dockerfile file"
  type        = string
}

variable "docker_ignore_file_content" {
  default     = ""
  description = "path of docker ignore file file"
  type        = string
}

variable "deployment_file_content" {
  default     = ""
  description = "path of deployment template"
  type        = string
}

variable "start_sh_file_content" {
  default     = ""
  description = "path of start_sh template"
  type        = string
}

variable branch {
  default = "main"
  description = "Name of github branch to which the files needs to be pushed"
  type = string
}

variable prototype_secret_name {
  default = "PROTOTYPE_NAME"
  description = "Name of the github action secret to use for protype name"
}