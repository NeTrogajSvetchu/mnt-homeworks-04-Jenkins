variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "platform_id" { 
  type        = string
  default     = "standard-v2"
  description = "политика планирования"
}

variable "sec_name" {
  type = string
  default = "example_dynamic"
}

variable "metadata" {
  type = map(string)
  default = {serial-port-enable = "1"  }
}

variable "subnet_id" {
  
}
variable "vm_nat" {
  type = bool
  default = true
}

variable "scheduling_policy" {
  type = bool
  default = true
}

variable "vm_family" {
  type = string
  default = "centos-stream-8" #"centos-7-oslogin"
}

variable "name" {
 
  default = [{name = "jenkins-agent"},{name = "jenkins-master"},]
}

variable "mnt" {
  type = map(string)
  default = {
    #name = "",
    cores= "2" ,
    memory="4",
    core_fraction="5",
    size= "10",
    type= "network-hdd"
  }
  
}