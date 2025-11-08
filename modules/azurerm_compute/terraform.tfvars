vms = {
  vm1 = {
    nic_name       = "nic-frontend-vm-01"
    location       = "eastus"
    rg_name        = "rg-pillu-dev-todoapp-01"
    vnet_name      = "vnet-pillu-dev-todoapp-01"
    subnet_name    = "frontend-subnet"
    pip_name       = "pip-pillu-dev-todoapp-01"
    vm_name        = "pillu-vm1"
    size           = "Standard_L2aos_v4"
    admin_username = "devopsadmin"
    admin_password = "P@ssword1234"
    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts-gen2"
      version   = "latest"
    }

  }
  vm2 = {
    nic_name       = "nic-backend-vm-02"
    location       = "eastus"
    rg_name        = "rg-pillu-dev-todoapp-01"
    vnet_name      = "vnet-pillu-dev-todoapp-01"
    subnet_name    = "backend-subnet"
    pip_name       = "pip-pillu-dev-todoapp-02"
    vm_name        = "pillu-vm2"
    size           = "Standard_L2aos_v4"
    admin_username = "adminuser"
    admin_password = "P@ssword1234"
    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts-gen2"
      version   = "latest"
    }
  }
}
