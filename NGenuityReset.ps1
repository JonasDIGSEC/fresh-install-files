# Script to reset NGenuity because of RGB reset when putting pc in sleep mode.
#
# Run script in Task scheduler
# https://blog.netwrix.com/how-to-automate-powershell-scripts-with-task-scheduler
#
# Use line under in powershell to find processes if used for another software
# Get-Process Select-String -Pattern 'NGenuity

##########
##SCRIPT##
##########

# Stop Processes
Get-Process | Where-Object { $_.Name -eq "NGenuity2" } | Select-Object -First 1 | Stop-Process
Get-Process | Where-Object { $_.Name -eq "NGenuity2GeneralHelper" } | Select-Object -First 1 | Stop-Process
Get-Process | Where-Object { $_.Name -eq "NGenuity2Helper" } | Select-Object -First 1 | Stop-Process

# Start Process
 #Find process name by running Get-StartApps in powershell
explorer shell:appsFolder\33C30B79.HyperXNGenuity_0a78dr3hq0pvt!App

exit
