oh-my-posh init pwsh --config ys | Invoke-Expression

if ((Get-Command psmux -ErrorAction SilentlyContinue) -and (-not $env:PSMUX)) {
    psmux attach-session -t powershell 2>$null

    if ($LASTEXISTCODE -ne 0) {
        psmux new-session -s powershell
    }
}
