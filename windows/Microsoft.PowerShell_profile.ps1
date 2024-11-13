function prompt {
    $codeStatus = if ($null -eq $LASTEXITCODE) { "0" } elseif ($LASTEXITCODE -eq 0) { "0" } else { "$LASTEXITCODE" }
    $currentTime = Get-Date -Format "HH:mm"
    $profileName = $env:USERNAME.ToLower()
    $currentPath = Get-Location
    $branchName = ""

    if (Test-Path ".git") {
        $branchName = git rev-parse --abbrev-ref HEAD 2>$null
        if ($branchName) {
            $branchName = " ($branchName)"
        }
    }

    $host.UI.RawUI.ForegroundColor = "White"
    Write-Host ("(") -NoNewline

    $host.UI.RawUI.ForegroundColor = "Cyan"
    Write-Host ("$codeStatus") -NoNewline

    $host.UI.RawUI.ForegroundColor = "White"
    Write-Host (")") -NoNewline

    $host.UI.RawUI.ForegroundColor = "White"
    Write-Host (" [") -NoNewline 
    Write-Host ("$currentTime") -NoNewline
    Write-Host ("]") -NoNewline

    $host.UI.RawUI.ForegroundColor = "Green"
    Write-Host (" $profileName") -NoNewline

    $host.UI.RawUI.ForegroundColor = "White"
    Write-Host (" - [") -NoNewline
    $host.UI.RawUI.ForegroundColor = "Cyan"
    Write-Host ("$currentPath") -NoNewline
    $host.UI.RawUI.ForegroundColor = "White"
    Write-Host ("]") -NoNewline 

    if ($branchName) {
        $host.UI.RawUI.ForegroundColor = "Yellow"
        Write-Host "$branchName" -NoNewline
    }

    return "`n> "
}

