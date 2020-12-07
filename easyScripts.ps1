Get-ADUser -Filter 'Name -like "*christiane doeringer*"' #| Format-Table Name,SamAccountName -A

Get-ADUser -Identity “christiane.doeringer” -Properties “LastLogonDate”

