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
/*
variable "bucket" {
  type = string
  default = "kuxar-bucket-1241125"
}

variable "service_account_name" {
  type = string
  default = "testkuxar"
}

variable "yandex_ydb_database_serverless_name" {
  type = string
  default = "test"
}
*/