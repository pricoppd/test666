$proxyString = "http://10.100.20.207:8080"

$proxyUri = new-object System.Uri($proxyString)

[System.Net.WebRequest]::DefaultWebProxy = 
    new-object System.Net.WebProxy ($proxyUri, $true)

[System.Net.WebRequest]::DefaultWebProxy.Credentials = 
    [System.Net.CredentialCache]::DefaultCredentials

Add-AzurermAccount
#Set-AzureSubscription –DefaultSubscription "PAYG-Live" 