$useraccount = 'user'
Get-ADUser -Identity $useraccount -Properties “LastLogonDate”