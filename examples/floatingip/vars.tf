variable "sel_token" {
  description = "Export Selectel API token as variable TF_VAR_sel_token"
  type        = string
}

variable "sel_account" {
  description = "Export Selectel account name as variable TF_VAR_sel_account"
  type        = string
}

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
