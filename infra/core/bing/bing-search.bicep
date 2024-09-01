resource bing 'Microsoft.Bing/accounts@2020-06-10' existing = {
  name: 'bingsearchresource'
  scope: resourceGroup(aoai-rg)
}


#disable-next-line outputs-should-not-contain-secrets
output bingApiKey string = bing.listKeys().key1
output endpoint string = 'https://api.bing.microsoft.com/'


