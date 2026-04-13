$ResourceGroup = "rg-tfstate"

az group delete --name $ResourceGroup --yes

Write-Host "tfstate storage account deleted."
