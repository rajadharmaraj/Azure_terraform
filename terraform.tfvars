environment            = "dev"
location              = "eastus"
resource_group_name   = "rg-terraform-demo"
storage_account_name  = "stterraformdemo2023"
storage_account_tier  = "Standard"
storage_account_replication = "LRS"

tags = {
  Project     = "Terraform Demo"
  Owner       = "DevOps Team"
  CostCenter  = "IT-001"
}
