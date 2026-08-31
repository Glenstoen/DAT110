$repos = "DAT101", "DAT200", "DAT110"
$root = $PSScriptRoot

foreach ($r in $repos) {
    Write-Host "`nPulling $r..." -ForegroundColor Cyan
    Set-Location "$root\$r"
    git pull
}

Set-Location $root
code Skole.code-workspace