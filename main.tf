resource "azurerm_linux_virtual_machine" "machine" {
  name                = var.linux_virtual_machine_name
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  network_interface_ids = [
    data.azurerm_network_interface.linux_interface.id
  ]

  disable_password_authentication = var.disable_password_authentication
  allow_extension_operations = var.allow_extension_operations


  os_disk {
    caching                = var.caching
    storage_account_type   = var.storage_account_type
    disk_size_gb           = var.disk_size_gb
  }

  source_image_reference {
    offer     = var.offer
    sku       = var.sku
    version   = var.image_version
  }

  tags = var.tags

}

data "azurerm_network_interface" "linux_interface" {
  name                = var.network_interface_linux_name
  resource_group_name = var.resource_group_name
}
