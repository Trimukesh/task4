$repoUrl = "https://github.com/Trimukesh/task4.git"
$approvalMsg = "Do you want to continue with the operation in $repoUrl? (Y/N)"
$approverList = "sarikatla@miraclesoft.com"

$approval = Read-Host $approvalMsg
if ($approval -eq "Y") {
    # Send approval request to approver list
    $approverArray = $approverList.Split(",")
    foreach ($approver in $approverArray) {
        # Send email or other notification to each approver
        Write-Host "Sending approval request to $approver..."
    }
    # Wait for approval from all approvers
    $approvalGranted = $false
    while (-not $approvalGranted) {
        # Check if all approvers have approved the request
        # Set $approvalGranted to $true if all approvers have approved
        Write-Host "Waiting for approval from all approvers..."
        Start-Sleep -Seconds 10
    }
    # Perform desired action(s) here
    Write-Host "Continuing with operation in $repoUrl..."
} else {
    Write-Host "Operation in $repoUrl cancelled."
    exit 1
}
