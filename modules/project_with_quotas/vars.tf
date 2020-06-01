variable "project_name" {
  default = ""
}

variable "user_name" {
  default = ""
}

variable "user_password" {
  default = ""
}

variable "region" {
  default = "ru-3"
}

variable "zone" {
  default = "ru-3a"
}

variable "quota_compute_cores" {
  default = 20
}

variable "quota_compute_ram" { 
  default = 32 * 1024
}

variable "quota_volume_gigabytes_local" {
  default = 100
}

variable "quota_volume_gigabytes_fast" {
  default = 500
}

variable "quota_volume_gigabytes_universal" {
  default = 500
}

variable "quota_volume_gigabytes_basic" {
  default = 1000
}

variable "quota_compute_pci_gpu_gtx1080" {
  default = 0
}

variable "quota_image_gigabytes" {
  default = 500
}

variable "quota_load_balancers" {
  default = 3
}

variable "quota_mks_cluster_regional" {
  default = 0
}

variable "quota_network_subnets_29"{
  default = 0
}

variable "quota_network_subnets_28"{
  default = 0
}

variable "quota_network_subnets_27"{
  default = 0
}


variable "quota_network_subnets_26"{
  default = 0
}


variable "quota_network_subnets_25"{
  default = 0
}


variable "quota_network_subnets_24"{
  default = 0
}

variable "quota_network_floatingips" {
  default = 3
}

variable "quota_license_windows_2012_standard" {
  default = 20
}

variable "quota_license_windows_2016_standard" {
  default = 20
}

variable "quota_license_windows_2019_standard" {
  default = 20
}

variable "quota_network_subnets_29_vrrp" {
  default = 0
}
