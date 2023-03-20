variable "project" {
  description = "The name of the project"
  type        = string
}

variable "region" {
  description = "The default compute region"
  type        = string
}

variable "repository_id" {
  description = "The name of the Artifact Registry repository to be created"
  type        = string
}

variable "format" {
  type = string
}

variable "display_name" {
  type = string
}

variable "account_id" {
  type = string
}

variable "role_gar" {
  type = string
}

variable "description" {
  type = string
}
