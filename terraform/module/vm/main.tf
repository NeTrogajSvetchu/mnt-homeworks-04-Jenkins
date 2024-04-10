data "yandex_compute_image" "centos" {
  family = var.vm_family
}
resource "yandex_compute_instance" "mnt" {
    platform_id = var.platform_id 
    for_each = {for idx, value in var.name : idx => value}
    name          = each.value ["name"]
     resources {
    cores         = var.mnt.cores
    core_fraction = var.mnt.core_fraction
    memory        = var.mnt.memory
    }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.centos.image_id
      size          = var.mnt.size
      type          = var.mnt.type
      
    }

  }
  scheduling_policy {
    preemptible = var.scheduling_policy
  }
  network_interface {
    subnet_id = var.subnet_id
    nat       = var.vm_nat
    
  }
  
  metadata = {
    user-data = file("${path.module}/cloud_config.yaml")
    serial-port-enable = var.metadata.serial-port-enable
    ssh-keys           = "user:${local.ssh_key}"
  }
}