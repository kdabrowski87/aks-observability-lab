using 'main.bicep'

param resourceGroupName = 'rg-aks-observability-lab'
param location = 'northeurope'
param tags = {
  environment: 'lab'
  project: 'aks-observability-lab'
}
