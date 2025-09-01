
extension microsoftGraphV1

var displayName = 'PortainerAuth'

var app = 'portainer-auth'
var logoImage = loadFileAsBase64('./app-logo.png')

resource clientApp 'Microsoft.Graph/applications@v1.0' = {
  displayName: displayName
  uniqueName: uniqueString(app)
  logo: logoImage
  web: {redirectUris: ['https://portainer.newlandshc.xyz/']}
}

output appName string = clientApp.displayName
output logoUrl string = clientApp.info.logoUrl == null ? 'Not yet set' : clientApp.info.logoUrl
