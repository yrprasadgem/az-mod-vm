variable "linux_virtual_machine_name"{
    type=string
}

variable "resource_group_name"{
    type=string
}

variable "location"{
    type=string
}

variable "size"{
    type=string
}

variable "admin_username" {
    type=string
}

variable "admin_password" {
    type=string
}

variable "disable_password_authentication" {
    type=bool
}

variable "allow_extension_operations" {
    type=bool
}

variable "caching" {
    type=string
}

variable "storage_account_type" {
    type=string
}

variable "disk_size_gb" {
    type=string
}

variable "publisher" {
    type=string
}

variable "offer" {
    type=string
}

variable "sku" {
    type=string
}

variable "image_version" {
    type=string
}

variable "tags" {
    type=map(any)
}

variable "network_interface_linux_name" {
    type=string
}

