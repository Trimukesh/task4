$repoUrl = "https://github.com/Trimukesh/task4.git"
$approvalMsg = "Do you want to continue with the operation in $repoUrl? (Y/N)"
$approval = Read-Host $approvalMsg
if ($approval -eq "Y") {
    # Perform desired action(s) here
    Write-Host "Continuing with operation in $repoUrl..."
} else {
    Write-Host "Operation in $repoUrl cancelled."
    exit 1
}
