$ResourceGroup = "rg-tfstate"
$StorageAccount = "sttfstatewb"   # change to something unique
$Container = "tfstate"
$Location = "westeurope"

az group create --name $ResourceGroup --location $Location

az storage account create `
  --name $StorageAccount `
  --resource-group $ResourceGroup `
  --location $Location `
  --sku Standard_LRS

az storage container create `
  --name $Container `
  --account-name $StorageAccount

Write-Host "Done. Use these values in your backend block:"
Write-Host "  resource_group_name  = `"$ResourceGroup`""
Write-Host "  storage_account_name = `"$StorageAccount`""
Write-Host "  container_name       = `"$Container`""
