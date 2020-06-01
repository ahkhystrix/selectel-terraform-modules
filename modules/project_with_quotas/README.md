# Project with user and quotas

Terraform module for creating a Selectel project with user and quotas.

## Variables

  * `project_name` - Name of the project.

  * `user_name` - Name of the user.

  * `user_password` - Password of the user.

You can omit the project name, username and password. 
A random name for the project and user will be created (they will match) 
and a random password.

## Outputs

  * `project_id` - ID of the created project.

  * `project_name` - Name of the created project.

  * `user_id` - ID of the created user.

  * `user_name` - Name of the created user.

  * `user_password` - Password of the created user.

  * `role_id` - ID of the created role.
