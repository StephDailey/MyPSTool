$session = New-PSSession -ComputerName 192.168.1.70 -Credential 7thheaven\Administrator

try {
Enter-PSSession $session 
}

catch {
Write-host "Error: This action could not be completed." -ForegroundColor Red
Write-host $_ 
}

finally {
Write-host "Script is done." -ForegroundColor DarkYellow
$computer = Read-host "Enter a computer name" 
}