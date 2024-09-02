@description('Name of the storage account')
// Can only be lowercase
param storageAccountName string = 'cxpsaarmttemplate'

resource storageAccount 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: storageAccountName
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {}
}
