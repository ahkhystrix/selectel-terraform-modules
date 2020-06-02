# Project with user and quotas

Terraform module for creating a Selectel project with user and quotas.

## Variables

  * `project_name` - Name of the project.

  * `user_name` - Name of the user.

  * `user_password` - Password of the user.

  * `region` - Region (default "ru-3")

  * `zone` - Zone (default "ru-3a")

  * `quota_compute_cores` - Quota compute cores (optional, default 20)
  
  * `quota_compute_ram` - Quota computer ram (optional, Mb, must divide by 256 without a remainder, default 32*1024)
  
  * `quota_volume_gigabytes_local` - Quota volume local (optional, Gb, default 100)

  * `quota_volume_gigabytes_fast` - Quota volume fast (optional, Gb, default 500)

  * `quota_volume_gigabytes_universal` - Quota volume universal (optional, Gb, default 500)

  * `quota_volume_gigabytes_basic` - Quota volume basic (optional, Gb, default 1000)

  * `quota_compute_pci_gpu_gtx1080` - Quota GPUs (optional, default 0)

  * `quota_image_gigabytes` - Quota image (optional, Gb, default 500)

  * `quota_load_balancers` - Quota load balancers (optional, default 3)

  * `quota_mks_cluster_regional` - Quota Kubernetes clusters (optional, default 0)

  * `quota_network_subnets_29` - Quota network subnets /29 (optional, default 0)

  * `quota_network_subnets_28` - Quota network subnets /28 (optional, default 0)

  * `quota_network_subnets_27` - Quota network subnets /27 (optional, default 0)

  * `quota_network_subnets_26` - Quota network subnets /26 (optional, default 0)

  * `quota_network_subnets_25` - Quota network subnets /25 (optional, default 0)

  * `quota_network_subnets_24` - Quota network subnets /24 (optional, default 0)

  * `quota_network_floatingips` - Quota floating IPs (optional, default 3)

  * `quota_license_windows_2012_standard` - Quota licenses Windows 2012 Standard (optional, default 20)

  * `quota_license_windows_2016_standard` - Quota licenses Windows 2016 Standard (optional, default 20)

  * `quota_license_windows_2019_standard` - Quota licenses Windows 2019 Standard (optional, default 20)

  *  `quota_network_subnets_29_vrrp` - Quota network subnets /29 VRRP (optional, default 0, doesn't work now, use web panel to change)

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
