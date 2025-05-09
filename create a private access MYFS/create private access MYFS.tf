provider "azurerm" {
  features {}
  subscription_id = "aa56909b-7f07-48b6-85fd-3bf928527a27" 
}

# data块表示引用已有 Resource Group
# resource块表示创建新资源
data "azurerm_resource_group" "existing" {
  name = "test-for-lab"  #
}

# 引用已有 Subnet
data "azurerm_subnet" "existing" {
  name = "MySQL" # 这里不能改成name，azurerm_resource_group 数据源不包含 subnet_name 属性
  virtual_network_name = "myVNet1" 
  resource_group_name  = data.azurerm_resource_group.existing.name
}

# 引用已有 Private DNS Zone，需要提前和VNet link一下
data "azurerm_private_dns_zone" "existing" {
  name                = "privatelink.mysql.database.azure.com"
  resource_group_name = data.azurerm_resource_group.existing.name
}

# 创建 MySQL Flexible Server
resource "azurerm_mysql_flexible_server" "mysql" {
  name                   = "mysql-flexible-server-test3-pvt" 
  resource_group_name    = data.azurerm_resource_group.existing.name
  location               = "East US"
  administrator_login    = "beibeihu"    
  administrator_password = "Ms199642-" 
  backup_retention_days  = 7
  delegated_subnet_id    = data.azurerm_subnet.existing.id
  private_dns_zone_id    = data.azurerm_private_dns_zone.existing.id
  sku_name               = "GP_Standard_D2ds_v4"

  depends_on = [data.azurerm_private_dns_zone.existing]
}
