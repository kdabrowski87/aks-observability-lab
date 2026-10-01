targetScope = 'subscription'

@description('Name of the resource group for the AKS observability lab.')
param resourceGroupName string

@description('Azure region for the resource group and its resources.')
param location string

@description('Tags applied to the resource group.')
param tags object = {}

module rg 'initial.bicep' = {
  name: 'initial-resourceGroup'
  params: {
    resourceGroupName: resourceGroupName
    location: location
    tags: tags
  }
}

output resourceGroupName string = rg.outputs.resourceGroupName
