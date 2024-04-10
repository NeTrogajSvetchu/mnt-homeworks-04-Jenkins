module "vpc" {
  source     = "../module/vpc"
  network_id = module.vpc.id
  folder_id  = var.folder_id
  token      = var.token
  cloud_id   = var.cloud_id
}

module "vm" {
  source     = "../module/vm"
  folder_id  = var.folder_id
  token      = var.token
  cloud_id   = var.cloud_id
  subnet_id = module.vpc.subnet_id
}