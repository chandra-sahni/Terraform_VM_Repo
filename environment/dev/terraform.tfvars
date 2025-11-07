networks = {
  vnet1 = {
    name                = "vnet-pillu-dev-todoapp-01"
    location            = "eastus"
    resource_group_name = "rg-pillu-dev-todoapp-01"
    address_space       = ["10.0.0.0/16"]
    subnets = [
      {
        name           = "frontend-subnet"
        address_prefix = ["10.0.1.0/24"]
      },
      {
        name           = "backend-subnet"
        address_prefix = ["10.0.2.0/24"]
      }
    ]
  }
}
public_ips = {
  app1 = {
    name                = "pip-pillu-dev-todoapp-01"
    location            = "eastus"
    resource_group_name = "rg-pillu-dev-todoapp-01"
    allocation_method   = "Static"
    tags = {
      app = "frontend"
      env = "prod"
    }
  }
  app2 = {
    name                = "pip-pillu-dev-todoapp-02"
    location            = "eastus"
    resource_group_name = "rg-pillu-dev-todoapp-01"
    allocation_method   = "Static"
    tags = {
      app = "backend"
      env = "prod"
    }
  }
}
