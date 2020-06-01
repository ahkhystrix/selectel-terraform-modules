output "project_id" {
  description = "The Selectel project id"
  value       = selectel_vpc_project_v2.project_1.id
}

output "project_name" {
  description = "The Selectel project name"
  value       = local.project_name
}

output "user_id" {
  description = "The Selectel user id"
  value       = selectel_vpc_user_v2.user_1.id
}

output "user_name" {
  description = "The Selectel user name"
  value       = local.user_name
}

output "user_password" {
  description = "The Selectel user password"
  value       = local.user_password
}

output "role_id" {
  description = "The Selectel role id"
  value       = selectel_vpc_role_v2.role_1.id
}
