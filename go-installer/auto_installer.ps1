# Variables definition
$version_to_download = "go1.23.0"

$url = "https://go.dev/dl/"+$version_to_download+".windows-amd64.msi"

Write-Output $url
# Fetch executable
Invoke-WebRequest -Uri $url