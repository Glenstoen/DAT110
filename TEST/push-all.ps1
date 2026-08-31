$repos = "DAT101", "DAT200", "DAT110"
$root = $PSScriptRoot

foreach ($r in $repos) {
    Set-Location "$root\$r"
    $status = git status --porcelain
    if ($status) {
        Write-Host "`nEndringer funnet i $r" -ForegroundColor Yellow
        git add .
        $msg = Read-Host "Commit-melding for $r"
        git commit -m "$msg"
        git push
    } else {
        Write-Host "$r - ingen endringer" -ForegroundColor Gray
    }
}
Set-Location $root