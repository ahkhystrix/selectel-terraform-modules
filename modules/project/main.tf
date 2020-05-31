resource "random_string" "name" {
  length  = 8
  special = false
  upper   = false
  number  = false
}

resource "random_password" "password" {
  length  = 16
  special = false
}

locals {
  project_name  = var.project_name  == "" ? random_string.name.result : var.project_name
  user_name     = var.user_name     == "" ? random_string.name.result : var.user_name
  user_password = var.user_password == "" ? random_password.password.result : var.user_password
}

resource "selectel_vpc_project_v2" "project_1" {
  name        = local.project_name
  auto_quotas = true
}

resource "selectel_vpc_user_v2" "user_1" {
  name     = local.user_name
  password = local.user_password
}

resource "selectel_vpc_role_v2" "role_1" {
  project_id = selectel_vpc_project_v2.project_1.id
  user_id    = selectel_vpc_user_v2.user_1.id
}
