$User = "User"
$Username = (Get-ADUser -Identity $User.trim() -ErrorAction Stop)
$ADGroups = Get-Content "C:\(...)\desktop\groups.txt"
Foreach($Group in $ADGroups){
    $Group = $Group.Trim()
    "Processing $Group"
    $GroupDetails = Get-ADGroup $Group -Properties members -ErrorAction SilentlyContinue | Where-Object {$_.members -eq $Username.DistinguishedName}
    If($GroupDetails){
         Remove-ADGroupMember -Identity $GroupDetails.DistinguishedName -Members $Username.DistinguishedName -Confirm:$false
    }
}