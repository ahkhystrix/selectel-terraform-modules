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
  auto_quotas = false

  quotas {
    resource_name = "compute_cores"

    resource_quotas {
      region = var.region
      zone   = var.zone
      value  = var.quota_compute_cores
    }
  }

  quotas {
    resource_name = "compute_ram"

    resource_quotas {
      region = var.region
      zone   = var.zone
      value  = var.quota_compute_ram
    }
  }

  quotas {
    resource_name = "volume_gigabytes_local"
    resource_quotas {
      region = var.region
      zone   = var.zone
      value  = var.quota_volume_gigabytes_local
    }
  }

  quotas {
    resource_name = "volume_gigabytes_fast"
    resource_quotas {
      region = var.region
      zone   = var.zone
      value  = var.quota_volume_gigabytes_fast
    }
  }

  quotas {
    resource_name = "volume_gigabytes_universal"
    resource_quotas {
      region = var.region
      zone   = var.zone
      value  = var.quota_volume_gigabytes_universal
    }
  }

  quotas {
    resource_name = "volume_gigabytes_basic"
    resource_quotas {
      region = var.region
      zone   = var.zone
      value  = var.quota_volume_gigabytes_basic
    }
  }

  quotas {
    resource_name = "compute_pci_gpu_gtx1080"
    resource_quotas {
      region = var.region
      zone   = var.zone
      value  = var.quota_compute_pci_gpu_gtx1080
    }
  }

  quotas {
    resource_name = "image_gigabytes"
    resource_quotas {
      region = var.region
      value  = var.quota_image_gigabytes
    }
  }

  quotas {
    resource_name = "load_balancers"
    resource_quotas {
      region = var.region
      value  = var.quota_load_balancers
    }
  }

  quotas {
    resource_name = "mks_cluster_regional"
    resource_quotas {
      region = var.region
      value  = var.quota_mks_cluster_regional
    }
  }

  quotas {
    resource_name = "network_subnets_29"
    resource_quotas {
      region = var.region
      value  = var.quota_network_subnets_29
    }
  }

  quotas {
    resource_name = "network_subnets_28"
    resource_quotas {
      region = var.region
      value  = var.quota_network_subnets_28
    }
  }

  quotas {
    resource_name = "network_subnets_27"
    resource_quotas {
      region = var.region
      value  = var.quota_network_subnets_27
    }
  }

  quotas {
    resource_name = "network_subnets_26"
    resource_quotas {
      region = var.region
      value  = var.quota_network_subnets_26
    }
  }

  quotas {
    resource_name = "network_subnets_25"
    resource_quotas {
      region = var.region
      value  = var.quota_network_subnets_25
    }
  }

  quotas {
    resource_name = "network_subnets_24"
    resource_quotas {
      region = var.region
      value  = var.quota_network_subnets_24
    }
  }

  quotas {
    resource_name = "network_floatingips"
    resource_quotas {
      region = var.region
      value  = var.quota_network_floatingips
    }
  }

  quotas {
    resource_name = "license_windows_2012_standard"
    resource_quotas {
      region = var.region
      value  = var.quota_license_windows_2012_standard
    }
  }

  quotas {
    resource_name = "license_windows_2016_standard"
    resource_quotas {
      region = var.region
      value  = var.quota_license_windows_2016_standard
    }
  }

  quotas {
    resource_name = "license_windows_2019_standard"
    resource_quotas {
      region = var.region
      value  = var.quota_license_windows_2019_standard
    }
  }

  /*
  quotas {
    resource_name = "network_subnets_29_vrrp"
    resource_quotas {
      value  = var.quota_network_subnets_29_vrrp
    }
  }
  */
}

resource "selectel_vpc_user_v2" "user_1" {
  name     = local.user_name
  password = local.user_password
}

resource "selectel_vpc_role_v2" "role_1" {
  project_id = selectel_vpc_project_v2.project_1.id
  user_id    = selectel_vpc_user_v2.user_1.id
}
