# Define the log file path
$logFilePath = ("C:\epm_service_kill_log.txt")

# Check if the FileZilla Server FTP server service is running
$serviceName = "filezilla-server"
$service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue

if ($service) {
    # Write debug log
    "[$(Get-Date)] - The $serviceName service is running. Stopping the service..." | Out-File -Append -FilePath $logFilePath
    
    # Stop the service
    Stop-Service -Name $serviceName
    
    # Write debug log
    "[$(Get-Date)] - The $serviceName service has been stopped." | Out-File -Append -FilePath $logFilePath
} else {
    # Write debug log
    "[$(Get-Date)] - The $serviceName service is not running." | Out-File -Append -FilePath $logFilePath
}
