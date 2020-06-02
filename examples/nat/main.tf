# Initialize the Selectel provider
provider "selectel" {
  token = var.sel_token
}

# Create defined project name and user name, random user password
module "project" {
  source = "../../modules/project"

  project_name = "tf_project"
  user_name    = "tf_user"
}

# Initialize Openstack provider
provider "openstack" {
  user_name           = module.project.user_name
  password            = module.project.user_password
  tenant_name         = module.project.project_name
  project_domain_name = var.sel_account
  user_domain_name    = var.sel_account
  auth_url            = var.auth_url
  region              = var.region
}

# Create NAT
module "nat" {
  source = "../../modules/nat"
}
