#get all groups for a user | | Out-GridView 

$useraccount = 'user'
Get-ADPrincipalGroupMembership -Identity $useraccount | Out-GridView 