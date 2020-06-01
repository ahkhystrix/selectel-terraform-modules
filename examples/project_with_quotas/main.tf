# Initialize the Selectel provider
provider "selectel" {
  token = var.sel_token
}

# Example 1. Defined project name and user name, random user password
#            with quotas
module "project" {
  source = "../../modules/project_with_quotas"

  project_name = "tf_project"
  user_name    = "tf_user"

  region       = "ru-3"
  zone         = "ru-3a"

  # Customize several quotas
  quota_compute_cores = 32
  quota_compute_ram   = 48 * 1024

  # Default quotas

  #quota_compute_cores                 = 20
  #quota_compute_ram                   = 32 * 1024

  #quota_volume_gigabytes_local        = 100
  #quota_volume_gigabytes_fast         = 500
  #quota_volume_gigabytes_universal    = 500
  #quota_volume_gigabytes_basic        = 1000

  #quota_compute_pci_gpu_gtx1080       = 0
  #quota_image_gigabytes               = 500
  #quota_load_balancers                = 3
  #quota_mks_cluster_regional          = 0

  #quota_network_subnets_29            = 0
  #quota_network_subnets_28            = 0
  #quota_network_subnets_27            = 0
  #quota_network_subnets_26            = 0
  #quota_network_subnets_25            = 0
  #quota_network_subnets_24            = 0
  
  #quota_network_floatingips           = 3

  #quota_license_windows_2012_standard = 20
  #quota_license_windows_2016_standard = 20
  #quota_license_windows_2019_standard = 20

  # Doesn't work, change only via web-panel
  #quota_network_subnets_29_vrrp       = 0
}
