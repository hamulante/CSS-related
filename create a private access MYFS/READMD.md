**PS C:\Users\beibeihu> cd C:\Users\beibeihu\Desktop**

**PS C:\Users\beibeihu\Desktop> terraform init**
Initializing the backend...
Initializing provider plugins...
- Finding latest version of hashicorp/azurerm...
- Installing hashicorp/azurerm v4.27.0...
- Installed hashicorp/azurerm v4.27.0 (signed by HashiCorp)
Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.

**PS C:\Users\beibeihu\Desktop> terraform plan**
data.azurerm_resource_group.existing: Reading...
data.azurerm_resource_group.existing: Read complete after 0s [id=/subscriptions/aa56909b-7f07-48b6-85fd-3bf928527a27/resourceGroups/test-for-lab]
data.azurerm_subnet.existing: Reading...
data.azurerm_private_dns_zone.existing: Reading...
data.azurerm_private_dns_zone.existing: Read complete after 1s [id=/subscriptions/aa56909b-7f07-48b6-85fd-3bf928527a27/resourceGroups/test-for-lab/providers/Microsoft.Network/privateDnsZones/privatelink.mysql.database.azure.com]
data.azurerm_subnet.existing: Read complete after 1s [id=/subscriptions/aa56909b-7f07-48b6-85fd-3bf928527a27/resourceGroups/test-for-lab/providers/Microsoft.Network/virtualNetworks/myVNet1/subnets/MySQL]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # azurerm_mysql_flexible_server.mysql will be created
  + resource "azurerm_mysql_flexible_server" "mysql" {
      + administrator_login           = "beibeihu"
      + administrator_password        = (sensitive value)
      + administrator_password_wo     = (write-only attribute)
      + backup_retention_days         = 7
      + delegated_subnet_id           = "/subscriptions/aa56909b-7f07-48b6-85fd-3bf928527a27/resourceGroups/test-for-lab/providers/Microsoft.Network/virtualNetworks/myVNet1/subnets/MySQL"
      + fqdn                          = (known after apply)
      + geo_redundant_backup_enabled  = false
      + id                            = (known after apply)
      + location                      = "eastus"
      + name                          = "mysql-flexible-server-test3-pvt"
      + private_dns_zone_id           = "/subscriptions/aa56909b-7f07-48b6-85fd-3bf928527a27/resourceGroups/test-for-lab/providers/Microsoft.Network/privateDnsZones/privatelink.mysql.database.azure.com"
      + public_network_access         = (known after apply)
      + public_network_access_enabled = (known after apply)
      + replica_capacity              = (known after apply)
      + replication_role              = (known after apply)
      + resource_group_name           = "test-for-lab"
      + sku_name                      = "GP_Standard_D2ds_v4"
      + version                       = (known after apply)
      + zone                          = (known after apply)

      + storage (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if
you run "terraform apply" now.

**PS C:\Users\beibeihu\Desktop> terraform apply**
data.azurerm_resource_group.existing: Reading...
data.azurerm_resource_group.existing: Read complete after 1s [id=/subscriptions/aa56909b-7f07-48b6-85fd-3bf928527a27/resourceGroups/test-for-lab]
data.azurerm_private_dns_zone.existing: Reading...
data.azurerm_subnet.existing: Reading...
data.azurerm_private_dns_zone.existing: Read complete after 0s [id=/subscriptions/aa56909b-7f07-48b6-85fd-3bf928527a27/resourceGroups/test-for-lab/providers/Microsoft.Network/privateDnsZones/privatelink.mysql.database.azure.com]
data.azurerm_subnet.existing: Read complete after 1s [id=/subscriptions/aa56909b-7f07-48b6-85fd-3bf928527a27/resourceGroups/test-for-lab/providers/Microsoft.Network/virtualNetworks/myVNet1/subnets/MySQL]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # azurerm_mysql_flexible_server.mysql will be created
  + resource "azurerm_mysql_flexible_server" "mysql" {
      + administrator_login           = "beibeihu"
      + administrator_password        = (sensitive value)
      + administrator_password_wo     = (write-only attribute)
      + backup_retention_days         = 7
      + delegated_subnet_id           = "/subscriptions/aa56909b-7f07-48b6-85fd-3bf928527a27/resourceGroups/test-for-lab/providers/Microsoft.Network/virtualNetworks/myVNet1/subnets/MySQL"
      + fqdn                          = (known after apply)
      + geo_redundant_backup_enabled  = false
      + id                            = (known after apply)
      + location                      = "eastus"
      + name                          = "mysql-flexible-server-test3-pvt"
      + private_dns_zone_id           = "/subscriptions/aa56909b-7f07-48b6-85fd-3bf928527a27/resourceGroups/test-for-lab/providers/Microsoft.Network/privateDnsZones/privatelink.mysql.database.azure.com"
      + public_network_access         = (known after apply)
      + public_network_access_enabled = (known after apply)
      + replica_capacity              = (known after apply)
      + replication_role              = (known after apply)
      + resource_group_name           = "test-for-lab"
      + sku_name                      = "GP_Standard_D2ds_v4"
      + version                       = (known after apply)
      + zone                          = (known after apply)

      + storage (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

azurerm_mysql_flexible_server.mysql: Creating...
azurerm_mysql_flexible_server.mysql: Still creating... [10s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [20s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [30s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [40s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [50s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [1m0s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [1m10s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [1m20s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [1m30s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [1m40s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [1m50s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [2m0s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [2m10s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [2m20s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [2m30s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [2m40s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [2m50s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [3m0s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [3m10s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [3m20s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [3m30s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [3m40s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [3m50s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [4m0s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [4m10s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [4m20s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [4m30s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [4m40s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [4m50s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [5m0s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [5m10s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [5m20s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [5m30s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [5m40s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [5m50s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [6m0s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [6m10s elapsed]
azurerm_mysql_flexible_server.mysql: Creation complete after 6m15s [id=/subscriptions/aa56909b-7f07-48b6-85fd-3bf928527a27/resourceGroups/test-for-lab/providers/Microsoft.DBforMySQL/flexibleServers/mysql-flexible-server-test3-pvt]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
Initializing the backend...
Initializing provider plugins...
- Finding latest version of hashicorp/azurerm...
- Installing hashicorp/azurerm v4.27.0...
- Installed hashicorp/azurerm v4.27.0 (signed by HashiCorp)
Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.

PS C:\Users\beibeihu\Desktop> terraform plan
data.azurerm_resource_group.existing: Reading...
data.azurerm_resource_group.existing: Read complete after 0s [id=/subscriptions/aa56909b-7f07-48b6-85fd-3bf928527a27/resourceGroups/test-for-lab]
data.azurerm_subnet.existing: Reading...
data.azurerm_private_dns_zone.existing: Reading...
data.azurerm_private_dns_zone.existing: Read complete after 1s [id=/subscriptions/aa56909b-7f07-48b6-85fd-3bf928527a27/resourceGroups/test-for-lab/providers/Microsoft.Network/privateDnsZones/privatelink.mysql.database.azure.com]
data.azurerm_subnet.existing: Read complete after 1s [id=/subscriptions/aa56909b-7f07-48b6-85fd-3bf928527a27/resourceGroups/test-for-lab/providers/Microsoft.Network/virtualNetworks/myVNet1/subnets/MySQL]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # azurerm_mysql_flexible_server.mysql will be created
  + resource "azurerm_mysql_flexible_server" "mysql" {
      + administrator_login           = "beibeihu"
      + administrator_password        = (sensitive value)
      + administrator_password_wo     = (write-only attribute)
      + backup_retention_days         = 7
      + delegated_subnet_id           = "/subscriptions/aa56909b-7f07-48b6-85fd-3bf928527a27/resourceGroups/test-for-lab/providers/Microsoft.Network/virtualNetworks/myVNet1/subnets/MySQL"
      + fqdn                          = (known after apply)
      + geo_redundant_backup_enabled  = false
      + id                            = (known after apply)
      + location                      = "eastus"
      + name                          = "mysql-flexible-server-test3-pvt"
      + private_dns_zone_id           = "/subscriptions/aa56909b-7f07-48b6-85fd-3bf928527a27/resourceGroups/test-for-lab/providers/Microsoft.Network/privateDnsZones/privatelink.mysql.database.azure.com"
      + public_network_access         = (known after apply)
      + public_network_access_enabled = (known after apply)
      + replica_capacity              = (known after apply)
      + replication_role              = (known after apply)
      + resource_group_name           = "test-for-lab"
      + sku_name                      = "GP_Standard_D2ds_v4"
      + version                       = (known after apply)
      + zone                          = (known after apply)

      + storage (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if
you run "terraform apply" now.

PS C:\Users\beibeihu\Desktop> terraform apply
data.azurerm_resource_group.existing: Reading...
data.azurerm_resource_group.existing: Read complete after 1s [id=/subscriptions/aa56909b-7f07-48b6-85fd-3bf928527a27/resourceGroups/test-for-lab]
data.azurerm_private_dns_zone.existing: Reading...
data.azurerm_subnet.existing: Reading...
data.azurerm_private_dns_zone.existing: Read complete after 0s [id=/subscriptions/aa56909b-7f07-48b6-85fd-3bf928527a27/resourceGroups/test-for-lab/providers/Microsoft.Network/privateDnsZones/privatelink.mysql.database.azure.com]
data.azurerm_subnet.existing: Read complete after 1s [id=/subscriptions/aa56909b-7f07-48b6-85fd-3bf928527a27/resourceGroups/test-for-lab/providers/Microsoft.Network/virtualNetworks/myVNet1/subnets/MySQL]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # azurerm_mysql_flexible_server.mysql will be created
  + resource "azurerm_mysql_flexible_server" "mysql" {
      + administrator_login           = "beibeihu"
      + administrator_password        = (sensitive value)
      + administrator_password_wo     = (write-only attribute)
      + backup_retention_days         = 7
      + delegated_subnet_id           = "/subscriptions/aa56909b-7f07-48b6-85fd-3bf928527a27/resourceGroups/test-for-lab/providers/Microsoft.Network/virtualNetworks/myVNet1/subnets/MySQL"
      + fqdn                          = (known after apply)
      + geo_redundant_backup_enabled  = false
      + id                            = (known after apply)
      + location                      = "eastus"
      + name                          = "mysql-flexible-server-test3-pvt"
      + private_dns_zone_id           = "/subscriptions/aa56909b-7f07-48b6-85fd-3bf928527a27/resourceGroups/test-for-lab/providers/Microsoft.Network/privateDnsZones/privatelink.mysql.database.azure.com"
      + public_network_access         = (known after apply)
      + public_network_access_enabled = (known after apply)
      + replica_capacity              = (known after apply)
      + replication_role              = (known after apply)
      + resource_group_name           = "test-for-lab"
      + sku_name                      = "GP_Standard_D2ds_v4"
      + version                       = (known after apply)
      + zone                          = (known after apply)

      + storage (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

azurerm_mysql_flexible_server.mysql: Creating...
azurerm_mysql_flexible_server.mysql: Still creating... [10s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [20s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [30s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [40s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [50s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [1m0s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [1m10s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [1m20s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [1m30s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [1m40s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [1m50s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [2m0s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [2m10s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [2m20s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [2m30s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [2m40s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [2m50s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [3m0s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [3m10s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [3m20s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [3m30s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [3m40s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [3m50s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [4m0s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [4m10s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [4m20s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [4m30s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [4m40s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [4m50s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [5m0s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [5m10s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [5m20s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [5m30s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [5m40s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [5m50s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [6m0s elapsed]
azurerm_mysql_flexible_server.mysql: Still creating... [6m10s elapsed]
azurerm_mysql_flexible_server.mysql: Creation complete after 6m15s [id=/subscriptions/aa56909b-7f07-48b6-85fd-3bf928527a27/resourceGroups/test-for-lab/providers/Microsoft.DBforMySQL/flexibleServers/mysql-flexible-server-test3-pvt]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
