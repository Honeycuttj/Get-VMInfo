Add-PSSnapin VMware.VimAutomation.core


#Connect-VIServer 55.195.95.49
Connect-VIServer 55.195.251.50

$pwd = Get-Content C:\Scripts\VMWare_Scripts\TaskSchedualCred
$cred = New-Object System.Management.Automation.PSCredential "ng\svc.nccsupport.ngpe", $pwd
$Date = get-date -DisplayHint date -Format ddMMMyy


get-vm -name * | export-csv "\\NGPEA7-FL0-1\InfoStore\Information Technology Division\Private\NCC\DIACAP\Servers\ServerList_$Date.csv"
