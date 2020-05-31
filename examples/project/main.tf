# Initialize the Selectel provider
provider "selectel" {
  token = var.sel_token
}

# Example 1. Defined project name and user name, random user password
module "project" {
  source = "../../modules/project"

  project_name = "tf_project"
  user_name    = "tf_user"
}

# Example 2. Defined project name, user name, user password
/*
module "project" {
  source = "../../modules/project"

  project_name  = "tf_project"
  user_name     = "tf_user"
  user_password = "P@ssw0rd"
}
*/

# Example 3. Random project name, user name, user password
/*
module "project" {
  source = "../../modules/project"
}
*/
