$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "33PROJECT local server starting..." -ForegroundColor Cyan
Write-Host "Open: http://localhost:5500" -ForegroundColor Green
Write-Host ""

if (Get-Command py -ErrorAction SilentlyContinue) {
    py -m http.server 5500
}
elseif (Get-Command python -ErrorAction SilentlyContinue) {
    python -m http.server 5500
}
else {
    Write-Host "Python was not found." -ForegroundColor Red
    Write-Host "You can still open index.html directly, or install the VS Code Live Server extension." -ForegroundColor Yellow
    Read-Host "Press Enter to close"
}
