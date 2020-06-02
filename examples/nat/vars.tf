variable "sel_token" {}

variable "sel_account" {}

variable "auth_url" {
  description = "Selectel Openstack API URL"
  type        = string
  default     = "https://api.selvpc.ru/identity/v3"
}

variable "region" {
  description = "Selectel region"
  type        = string
  default     = "ru-3"
}
