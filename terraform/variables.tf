variable "project_name" {
  description = "Name of the project, used in resource naming"
  type        = string
  default     = "mydevopsapp"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be one of: dev, staging, prod"
  }
}

variable "location" {
  description = "Azure region to deploy resources"
  type        = string
  default     = "westeurope"
}