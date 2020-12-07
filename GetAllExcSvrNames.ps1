#Powershell script to get all exchange servers names

$exchangeServers = get-adcomputer -filter {(name -like "*SRVEXC*") -and (enabled -eq $true)} | Select name

$exchangeServers | Out-GridView